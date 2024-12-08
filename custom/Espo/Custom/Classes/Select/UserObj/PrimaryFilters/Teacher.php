<?php

namespace Espo\Custom\Classes\Select\UserObj\PrimaryFilters;

use Espo\Core\Select\Primary\Filter;
use Espo\ORM\Query\SelectBuilder;

class Teacher implements Filter
{
    public function apply(SelectBuilder $queryBuilder): void
    {

        $subQuery = SelectBuilder::create()->select('id')->from('User')->leftJoin('roleUser', 'roleas', ['roleas.userId=:' => 'id'])->where([
            'roleas.roleId' => ['6730c003e1e7741d6']
        ])->build();

        $queryBuilder->where([
            [
                "id=s" => $subQuery,
            ]
        ]);
    }
}
