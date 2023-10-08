#ifndef SYMBOLTABLE_H
#define SYMBOLTABLE_H

#include <string>
#include <unordered_map>

class SymbolTable {
    std::unordered_map<std::string, double> symbolTable;
public:
    bool lookup(std::string identifier);// 查找标识符是否存在于符号表中
    void insert(std::string identifier, double value);// 插入或更新标识符及其对应的值到符号表中
    double getValue(std::string identifier);// 获取标识符对应的值
    void printAll();// 打印符号表中的所有标识符及其对应的值
};
#endif //SYMBOLTABLE_H