//
//  Search.swift
//  TikTakToe
//
//  Created by Raul Ferreira on 3/17/16.
//  Copyright © 2016 FCUP. All rights reserved.
//

import Foundation


func generateSuccessors(currentState: State) -> [State]{
    var successors = [State]()

    let fatherTable = currentState.table
    let fatherDepth = currentState.depth

    for i in 0..<3{
        for j in 0..<3 {
            if(fatherTable[i][j] == " "){
                var childTable = fatherTable
                childTable[i][j] = playerSymbol
                let childState = State(table: childTable, depth: fatherDepth+1, utility: getUtility(childTable))
                successors.append(childState)
            }
        }
    }

    return successors
}