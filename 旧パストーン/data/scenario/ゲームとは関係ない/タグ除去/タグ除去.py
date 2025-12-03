import enum
from itertools import count
import re

class delete_program:
    def __init__(self):
        pass
    
    #文字修正を適用するテキストファイル読み込み
    def delete_program_init(self):
        
        #全文読み込み
        with open(r"D:\remove\2n1.txt", 'r' ,encoding="utf-8") as f:
            input_list = f.read().split("\n")

        #読み込んだものを１行ずつリストに入れる
        self.text_lines_list = [] #行数分の要素が入る
        count = 0
        for line in input_list:
            self.text_lines_list.append(line)
            #print(self.text_lines_list[count])
            count += 1

    #文字列の先頭が特定の文字の時にその行を削除する
    def delete_symbol_headofline(self):
        count = 0 #削除対象の行数カウント
        symbol_headofline_list = [";","@","*"]
        for line in self.text_lines_list:
            for j in symbol_headofline_list:
                if len(line) == 0:
                    pass

                elif line[0] == j:
                    self.text_lines_list[count] = ""
            
            #print(self.text_lines_list[count])
            count += 1

    def deltete_symbol_sandwich(self):
        count = 0 #削除対象の行数カウント
        #delete = "false"
        delete_start = 0
        delete_end = 0
        symbol_sandwich_list = [["[","]"]]
        delete_st = "false"
        delete_et = "false"
        
        for j in symbol_sandwich_list:
            count = 0
            for line in self.text_lines_list:
                delete_start = 0
                delete_end = 0
                for k in range(len(line)):
                    #文字が削除対象の文字と一致していたら
                    if str(line[k]) == j[0]:
                        #print(str(j[0]) + "j[0]です")
                        delete_st = "true"
                        delete_start = k #行の先頭から数えたときの削除開始位置
                        #print(delete_start)
                    elif str(line[k]) == j[1]:
                        #print(str(j[1]) + "j[1]です")
                        delete_et = "true"
                        delete_end = k #終了位置
                        #print(delete_end)
                    else:
                        pass
                    
                    #文字消す
                    if delete_st == "true" and delete_et == "true":
                        #print("deleteしたよ")
                        #print(type(self.text_lines_list[count]))
                        self.text_lines_list[count]=str(self.text_lines_list[count]).replace(str(self.text_lines_list[count])[delete_start:delete_end+1],"")
                        delete_st = "false"
                        delete_et = "false"

                #print(self.text_lines_list[count])
                count += 1


    def output_txt(self):
        previous_newline="false"
        print("書き出しだよ")
        f = open(r"D:\remove\output\output.txt", 'w',encoding="utf-8")
        for i in self.text_lines_list:
            if i=="" and previous_newline=="false":
                #print(0)
                previous_newline = "true"
                f.write(i + "\n")
            elif i=="":
                #print(1)
                pass
            elif i!="":
                #print(2)
                f.write(i + "\n")
                previous_newline = "false"

        f.close()

    """def delete_newline(self):
        count_newline=0
        continue_newline = "false"
        count_delete = 0
        for i,j in enumerate(self.text_lines_list):
            if j == "":
                count_newline += 1
                continue_newline = "true"
            
            else:
                if continue_newline=="true" and count_newline>=2:
                    for k in range(count_newline-1):
                        del self.text_lines_list[i-count_newline-count_delete+k]
                        print("改行削除")

                    count_delete += count_newline
                    count_newline = 0"""
                    


delete_program = delete_program()
#delete_program.init_delete_line()
delete_program.delete_program_init()
delete_program.delete_symbol_headofline()
delete_program.deltete_symbol_sandwich()

#delete_program.delete_newline()

delete_program.output_txt()
