/*
** @author:止水清潇menghuanlater
** @date:2017-11-22
** @location:BUAA
*/
//跳读处理要注意读取下一个symbol的问题
#include <iostream>
#include "error.h"
using namespace std;

bool ErrorFalg = false;

void Error::LexicalAnalysisError(LexicalErrorCode errorCode,int lineNumber)const{
    ErrorFalg = true;
    switch(errorCode){
        case SingleCharIllegal:
            cout<<"At line: "<<lineNumber<<" exists single character illegal error."<<endl;
            break;
        case StringIllegal:
            cout<<"At line: "<<lineNumber<<" exists string illegal error."<<endl;
            break;
        case ContentIllegal:
            cout<<"At line: "<<lineNumber<<" exists contents illegal error."<<endl;
            break;
        case NotEqualSymIllegal:
        cout<<"At line: "<<lineNumber<<" exists symbol \'!=\' not match error."<<endl;
            break;
        default:break;
    }
}

void Error::SyntaxAnalysisError(SyntaxErrorCode errorCode,int lineNumber){
    ErrorFalg = true;
    switch(errorCode){
        case EmptyFileError:
            cout<<"The file is empty!"<<endl;
            break;
        case AfterMainContentError:
            cout<<"After structure:\"void main(){...}\" can\'t exist other contents!"<<endl;
            break;
        default:break;
    }
}