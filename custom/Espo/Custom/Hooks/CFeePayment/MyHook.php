<?php

namespace Espo\Custom\Hooks\CFeePayment;

use Espo\Core\ORM\EntityManager;
use Espo\ORM\Entity;

class MyHook {

    public function __construct(private EntityManager $entityManager){
        
    }
    public function afterSave(Entity $entity){
        $khoaHocId = $entity->get('drivingCourseId');
        if($khoaHocId){
            $this->updateKhoaHocTotal($khoaHocId);
        }
    }

    public function afterRemove(Entity $entity, $options){
        $this->updateKhoaHocTotal($entity->get('drivingCourseId'));
    }

    public function updateKhoaHocTotal($khoaHocId){
        $khoahoc = $this->entityManager->getEntity('CDrivingCourse', $khoaHocId);
        $lichsus = $this->entityManager->getRDBRepository('CFeePayment')->where(['drivingCourseId' => $khoaHocId])->find();

        $total = 0;
        foreach ($lichsus as $key => $record) {
            $total += $record->get('money');
        }
        $khoahoc->set('hocphidanap', $total);
        $this->entityManager->saveEntity($khoahoc);
    }
}
