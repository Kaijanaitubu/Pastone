import os

chara_list = ["mizuka","kouki","ayana","RozLaz"]

#25行目のpathはそれぞれ端末によって書き換える
#使い方はここのchara_list[]のインデックスを変えるだけ
#chara変数に表情追加したいキャラの名前を入れて実行するとターミナルにすべての表情が出力される

#取得した画像から拡張子を取り除いてbase_filenameに入れる
def split_exp():
    for i in range(len(full_filename)):
        split_str = str(full_filename[i]).split(".")
        base_filename.append(split_str[0])

def output_faces():
    for i in range(len(base_filename)):
        string = "[chara_face name=\"" + str(chara) + "\" face=\"" + str(base_filename[i]) + "\" " + "storage=\"chara/" + str(chara) + "/" + str(full_filename[i]) + "\"]"
        #string = "[chara_face name=\"" + str(chara) + "\"_big face=\"" + str(base_filename[i]) + "\" " + "storage=\"chara/" + str(chara) + "/" + str(full_filename[i]) + "\"]"
        print(string)

def output_faces_big():
    for i in range(len(base_filename)):
        #string = "[chara_face name=\"" + str(chara) + "\" face=\"" + str(base_filename[i]) + "\" " + "storage=\"chara/" + str(chara) + "/" + str(full_filename[i]) + "\"]"
        string = "[chara_face name=\"" + str(chara) + "_big" +"\" face=\"" + str(base_filename[i]) + "\" " + "storage=\"chara/" + str(chara) + "/" + str(full_filename[i]) + "\"]"
        print(string)

for i in range(len(chara_list)):
    chara = chara_list[i] 
    
    #[chara_face name="" face="" storage = "chara/mizuka/.png"]
    file_path = r"..\..\..\fgimage\chara" + r"\\" + str(chara)

    #キャラの表情画像をすべてフルネームで取得
    full_filename = os.listdir(file_path)
    #拡張子なしのファイル名入れる
    base_filename = []

    split_exp()
    output_faces()
    output_faces_big()
    print()

