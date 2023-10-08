#include <iostream>
#include <cfloat>
#include "SymbolTable.h"

bool SymbolTable::lookup(std::string identifier)
{
    if(symbolTable.find(identifier) == symbolTable.end()){// 使用 find() 函数在符号表中查找标识符
        return false;//不存在返回false
    }
    return true;//存在返回true
}

void SymbolTable::insert(std::string identifier, double value)
{
    auto res = symbolTable.insert(std::pair<std::string, double>(identifier, value));// 使用 find() 函数在符号表中查找标识符
    if(res.second){
        std::cout << "插入 " << identifier << "=" << value <<" 成功!" << std::endl;
    }
    else{
        std::cout << "更新 " << identifier << ":" << symbolTable[identifier] << "->" << value << " 成功！" << std::endl;
        symbolTable[identifier] = value;// 更新标识符对应的值
    }
    printAll();//打印更新后的符号表
}

double SymbolTable::getValue(std::string identifier)
{
    if(symbolTable.find(identifier) == symbolTable.end()) {
        return DBL_MIN;  // 如果标识符不存在
    }
    return symbolTable.find(identifier)->second; // 如果标识符存在，返回对应的值
}

void SymbolTable::printAll()
{
    for (auto &item : symbolTable){
        std::cout << item.first << " = " << item.second << std::endl;
    }
}