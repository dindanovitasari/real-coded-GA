function varargout = Komposisi(varargin)
% % Author: Dinda Novitasari
% KOMPOSISI M-file for Komposisi.fig
%      KOMPOSISI, by itself, creates a new KOMPOSISI or raises the existing
%      singleton*.
%
%      H = KOMPOSISI returns the handle to a new KOMPOSISI or the handle to
%      the existing singleton*.
%
%      KOMPOSISI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KOMPOSISI.M with the given input arguments.
%
%      KOMPOSISI('Property','Value',...) creates a new KOMPOSISI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Komposisi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Komposisi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Komposisi

% Last Modified by GUIDE v2.5 22-Dec-2014 18:12:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Komposisi_OpeningFcn, ...
                   'gui_OutputFcn',  @Komposisi_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Komposisi is made visible.
function Komposisi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Komposisi (see VARARGIN)

% Choose default command line output for Komposisi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Komposisi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Komposisi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
usia = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
tb = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
       

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',{'Istirahat';'Sangat Ringan';'Ringan';'Sedang';'Berat'});

% --- Executes during object creation, after setting all properties.
function time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
clear all;
close all;
tic;
% mendapatkan nilai dari GUI
jumlah_generasi=str2double(get(handles.edit7,'String'));
tb = str2double(get(handles.edit4,'String'));
usia = str2double(get(handles.edit1,'String'));
jenis_kegiatan = get(handles.popupmenu1,'String');
kode = get(handles.popupmenu1,'Value');
nama_kegiatan = jenis_kegiatan{kode};
if (strcmp('Istirahat', nama_kegiatan)== 1)
    kegiatan = 0.1;
elseif (strcmp('Sangat Ringan', nama_kegiatan)== 1)
    kegiatan = 0.3;
elseif (strcmp('Ringan', nama_kegiatan)== 1)
    kegiatan = 0.5;
elseif (strcmp('Sedang', nama_kegiatan)== 1)
    kegiatan = 0.75;
elseif (strcmp('Berat', nama_kegiatan) == 1)
    kegiatan = 1;
end
% hitung inisial penalti

bbi=0.9*(tb-100);
bbih=bbi+(usia*0.35);
amb=bbih*1*24;
kt=bbih*0.1*7;
af=kegiatan*(amb-kt);
sda=0.09*(amb-kt+af);
tee=amb+kt+af+sda;
energi=tee;
protein=0.15*energi;
lemak=0.25*energi;
karbo=0.6*energi;

% original parent
% popSize=10;
for i=1:15
    x(:,i) = randi([0 19],10,1); 
end

% koneksi ke database
javaaddpath('D:\Documents\KULIAH\Tugas Semester 7\Algoritma Evolusi\mysql-connector-java-5.1.34\mysql-connector-java-5.1.34-bin.jar');
host = 'localhost';%MySQL hostname
user = 'root'; %MySQL username
password = '';%MySQL password
dbName = 'datagizi'; %MySQL database name
%# parameter JDBC
jdbcString = sprintf('jdbc:mysql://%s/%s', host, dbName);
jdbcDriver = 'com.mysql.jdbc.Driver';
%# buat koneksi
conn = database(dbName, user , password, jdbcDriver, jdbcString);

% %======= baca data dari database dan penjumlahan=====
% jumlah energi per baris
% 
for i=1:10
%     energi, karbo, protein, lemak, harga pokok
    id=x(i,1);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pokok where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pokok_c{1}= get(rs, 'Data');
    id=x(i,6);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pokok where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pokok_c{2}= get(rs, 'Data');
    id=x(i,11);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pokok where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pokok_c{3}= get(rs, 'Data');
    for a=1:3
        total_pokok_m(a,:)=total_pokok_c{a};
    end
    total_pokok_matriks=cell2mat(total_pokok_m);
    for b=1:5
        total_pokok(1,b)=sum(total_pokok_matriks(:,b))
    end
%     energi, karbo, protein, lemak, harga nabati
    id=x(i,2);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM nabati where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_nabati_c{1}= get(rs, 'Data');
    id=x(i,7);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM nabati where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_nabati_c{2}= get(rs, 'Data');
    id=x(i,12);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM nabati where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_nabati_c{3}= get(rs, 'Data');
    for a=1:3
        total_nabati_m(a,:)=total_nabati_c{a};
    end
    total_nabati_matriks=cell2mat(total_nabati_m);
    for b=1:5
        total_nabati(1,b)=sum(total_nabati_matriks(:,b))
    end
%     energi, karbo, protein, lemak, harga hewani
    id=x(i,3);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM hewani where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_hewani_c{1}= get(rs, 'Data');
    id=x(i,8);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM hewani where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_hewani_c{2}= get(rs, 'Data');
    id=x(i,13);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM hewani where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_hewani_c{3}= get(rs, 'Data');
    for a=1:3
        total_hewani_m(a,:)=total_hewani_c{a};
    end
    total_hewani_matriks=cell2mat(total_hewani_m);
    for b=1:5
        total_hewani(1,b)=sum(total_hewani_matriks(:,b))
    end
%     energi, karbo, protein, lemak, harga sayuran
    id=x(i,4);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM sayuran where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_sayuran_c{1}= get(rs, 'Data');
    id=x(i,9);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM sayuran where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_sayuran_c{2}= get(rs, 'Data');
    id=x(i,14);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM sayuran where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_sayuran_c{3}= get(rs, 'Data');
    for a=1:3
        total_sayuran_m(a,:)=total_sayuran_c{a};
    end
    total_sayuran_matriks=cell2mat(total_sayuran_m);
    for b=1:5
        total_sayuran(1,b)=sum(total_sayuran_matriks(:,b))
    end
%     energi, karbo, protein, lemak, harga pelengkap
    id=x(i,5);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pelengkap where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pelengkap_c{1}= get(rs, 'Data');
    id=x(i,10);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pelengkap where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pelengkap_c{2}= get(rs, 'Data');
    id=x(i,15);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pelengkap where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pelengkap_c{3}= get(rs, 'Data');
    for a=1:3
        total_pelengkap_m(a,:)=total_pelengkap_c{a};
    end
    total_pelengkap_matriks=cell2mat(total_pelengkap_m);
    for b=1:5
        total_pelengkap(1,b)=sum(total_pelengkap_matriks(:,b))
    end
    
    % total energi
    x(i,16)=total_pokok(1,1)+total_nabati(1,1)+total_hewani(1,1)+total_sayuran(1,1)+total_pelengkap(1,1);
    % total karbo
    x(i,17)=total_pokok(1,2)+total_nabati(1,2)+total_hewani(1,2)+total_sayuran(1,2)+total_pelengkap(1,2);
    % total protein 
    x(i,18)=total_pokok(1,3)+total_nabati(1,3)+total_hewani(1,3)+total_sayuran(1,3)+total_pelengkap(1,3);
    % total lemak
    x(i,19)=total_pokok(1,4)+total_nabati(1,4)+total_hewani(1,4)+total_sayuran(1,4)+total_pelengkap(1,4);
    % total harga
    x(i,20)=total_pokok(1,5)+total_nabati(1,5)+total_hewani(1,5)+total_sayuran(1,5)+total_pelengkap(1,5);
    %  hitung penalti
%     penalti energi
    if (x(i,16)>=energi)
        x(i,21)=0;
    else x(i,21)=energi-x(i,16);
    end
%     penalti karbo
    if (x(i,17)>=karbo)
        x(i,22)=0;
    else x(i,22)=karbo-x(i,17);
    end
%     penalti protein
    if (x(i,18)>=protein)
        x(i,23)=0;
    else x(i,23)=protein-x(i,18);
    end
%     penalti lemak
    if (x(i,19)>=lemak)
        x(i,24)=0;
    else x(i,24)=lemak-x(i,19);
    end
end

% hitung fitness per baris
total_penalti=sum(x(:,21:24));
total_penalti=sum(total_penalti);
for i=1:10
    x(i,25)=1/(x(i,20)+total_penalti);
end
phenotype=[x(:,1:15),x(:,20),x(:,25)];
set(handles.ParentAsli,'Userdata',phenotype);
t=uitable('Data', phenotype, 'ColumnName',...
        {'Pokok 1', 'Nabati 1','Hewani 1','Sayuran 1','Pelengkap 1','Pokok 2', 'Nabati 2','Hewani 2','Sayuran 2','Pelengkap 2','Pokok 3', 'Nabati 3','Hewani 3','Sayuran 3','Pelengkap 3', 'Harga','Fitness'},...
        'Position', [14 133 496 160]);

% % crossover
    index = randi([1 15],2,1);
    parent = randi([1 10],4,1);
    segmen_1 = x(parent(1,1),1:index(1,1));
    segmen_2 = x(parent(2,1),(index(1,1)+1):15);
    segmen_3 = x(parent(2,1),1:index(1,1));
    segmen_4 = x(parent(1,1),(index(1,1)+1):15);
    segmen_5 = x(parent(3,1),1:index(2,1));
    segmen_6 = x(parent(4,1),(index(2,1)+1):15);
    segmen_7 = x(parent(4,1),1:index(2,1));
    segmen_8 = x(parent(3,1),(index(2,1)+1):15);
    offspring(1,:)=horzcat(segmen_1,segmen_2);
    offspring(2,:)=horzcat(segmen_3,segmen_4);
    offspring(3,:)=horzcat(segmen_5,segmen_6);
    offspring(4,:)=horzcat(segmen_7,segmen_8);

% % mutasi
    index = randi([1 15],2,1);
    parent = randi([1 10],1,1);
    temp_parent=x(parent,1:15);
    titik_mutasi_1 = temp_parent(1,index(1,1));
    titik_mutasi_2 = temp_parent(1,index(2,1));
    temp_parent(1,index(1,1)) = titik_mutasi_2;
    temp_parent(1,index(2,1)) = titik_mutasi_1;
    offspring(5,:)=temp_parent(1,:);

% %======= baca data dari database dan penjumlahan=====
% jumlah energi per baris
% 
for i=1:5
%     energi, karbo, protein, lemak, harga pokok
    id=offspring(i,1);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pokok where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pokok_c{1}= get(rs, 'Data');
    id=offspring(i,6);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pokok where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pokok_c{2}= get(rs, 'Data');
    id=offspring(i,11);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pokok where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pokok_c{3}= get(rs, 'Data');
    for a=1:3
        total_pokok_m(a,:)=total_pokok_c{a};
    end
    total_pokok_matriks=cell2mat(total_pokok_m);
    for b=1:5
        total_pokok(1,b)=sum(total_pokok_matriks(:,b))
    end
%     energi, karbo, protein, lemak, harga nabati
    id=offspring(i,2);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM nabati where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_nabati_c{1}= get(rs, 'Data');
    id=offspring(i,7);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM nabati where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_nabati_c{2}= get(rs, 'Data');
    id=offspring(i,12);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM nabati where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_nabati_c{3}= get(rs, 'Data');
    for a=1:3
        total_nabati_m(a,:)=total_nabati_c{a};
    end
    total_nabati_matriks=cell2mat(total_nabati_m);
    for b=1:5
        total_nabati(1,b)=sum(total_nabati_matriks(:,b))
    end
%     energi, karbo, protein, lemak, harga hewani
    id=offspring(i,3);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM hewani where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_hewani_c{1}= get(rs, 'Data');
    id=offspring(i,8);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM hewani where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_hewani_c{2}= get(rs, 'Data');
    id=offspring(i,13);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM hewani where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_hewani_c{3}= get(rs, 'Data');
    for a=1:3
        total_hewani_m(a,:)=total_hewani_c{a};
    end
    total_hewani_matriks=cell2mat(total_hewani_m);
    for b=1:5
        total_hewani(1,b)=sum(total_hewani_matriks(:,b))
    end
%     energi, karbo, protein, lemak, harga sayuran
    id=offspring(i,4);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM sayuran where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_sayuran_c{1}= get(rs, 'Data');
    id=offspring(i,9);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM sayuran where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_sayuran_c{2}= get(rs, 'Data');
    id=offspring(i,14);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM sayuran where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_sayuran_c{3}= get(rs, 'Data');
    for a=1:3
        total_sayuran_m(a,:)=total_sayuran_c{a};
    end
    total_sayuran_matriks=cell2mat(total_sayuran_m);
    for b=1:5
        total_sayuran(1,b)=sum(total_sayuran_matriks(:,b))
    end
%     energi, karbo, protein, lemak, harga pelengkap
    id=offspring(i,5);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pelengkap where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pelengkap_c{1}= get(rs, 'Data');
    id=offspring(i,10);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pelengkap where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pelengkap_c{2}= get(rs, 'Data');
    id=offspring(i,15);
    query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pelengkap where id="%d"',id);
    rs = fetch(exec(conn, query));
    total_pelengkap_c{3}= get(rs, 'Data');
    for a=1:3
        total_pelengkap_m(a,:)=total_pelengkap_c{a};
    end
    total_pelengkap_matriks=cell2mat(total_pelengkap_m);
    for b=1:5
        total_pelengkap(1,b)=sum(total_pelengkap_matriks(:,b))
    end
    
       % total energi
    total(i,1)=total_pokok(1,1)+total_nabati(1,1)+total_hewani(1,1)+total_sayuran(1,1)+total_pelengkap(1,1);
    % total karbo
    total(i,2)=total_pokok(1,2)+total_nabati(1,2)+total_hewani(1,2)+total_sayuran(1,2)+total_pelengkap(1,2);
    % total protein 
    total(i,3)=total_pokok(1,3)+total_nabati(1,3)+total_hewani(1,3)+total_sayuran(1,3)+total_pelengkap(1,3);
    % total lemak
    total(i,4)=total_pokok(1,4)+total_nabati(1,4)+total_hewani(1,4)+total_sayuran(1,4)+total_pelengkap(1,4);
    % total harga
    total(i,5)=total_pokok(1,5)+total_nabati(1,5)+total_hewani(1,5)+total_sayuran(1,5)+total_pelengkap(1,5);
    %  hitung penalti
%     penalti energi
    if (total(i,1)>=energi)
        total(i,6)=0;
    else total(i,6)=energi-total(i,1);
    end
%     penalti karbo
    if (total(i,2)>=karbo)
        total(i,7)=0;
    else total(i,7)=karbo-total(i,2);
    end
%     penalti protein
    if (total(i,3)>=protein)
        total(i,8)=0;
    else total(i,8)=protein-total(i,3);
    end
%     penalti lemak
    if (total(i,4)>=lemak)
        total(i,9)=0;
    else total(i,9)=lemak-total(i,4);
    end
end

% hitung fitness per baris
total_penalti=sum(total(:,6:9));
total_penalti=sum(total_penalti);
for i=1:5
    fitness(i,1)=1/(total(i,5)+total_penalti);
end

% % semua individu
combine_offspring =[offspring,total,fitness];
individu=vertcat(x,combine_offspring);

% % elitism selection
individu = sortrows(individu,-25);
generasi = individu (1:10,:);
temp_individu=[individu(1,1:15),individu(1,20),individu(1,25)];
solusi (1,:)=temp_individu;

% ======================================================================
% % iterasi sampai generasi
% ======================================================================
for z=1:jumlah_generasi
    % % crossover
    index = randi([1 15],2,1);
    parent = randi([1 10],4,1);
    segmen_1 = generasi(parent(1,1),1:index(1,1));
    segmen_2 = generasi(parent(2,1),(index(1,1)+1):15);
    segmen_3 = generasi(parent(2,1),1:index(1,1));
    segmen_4 = generasi(parent(1,1),(index(1,1)+1):15);
    segmen_5 = generasi(parent(3,1),1:index(2,1));
    segmen_6 = generasi(parent(4,1),(index(2,1)+1):15);
    segmen_7 = generasi(parent(4,1),1:index(2,1));
    segmen_8 = generasi(parent(3,1),(index(2,1)+1):15);
    offspring(1,:)=horzcat(segmen_1,segmen_2);
    offspring(2,:)=horzcat(segmen_3,segmen_4);
    offspring(3,:)=horzcat(segmen_5,segmen_6);
    offspring(4,:)=horzcat(segmen_7,segmen_8);

% % mutasi
    index = randi([1 15],2,1);
    parent = randi([1 10],1,1);
    temp_parent=x(parent,1:15);
    titik_mutasi_1 = temp_parent(1,index(1,1));
    titik_mutasi_2 = temp_parent(1,index(2,1));
    temp_parent(1,index(1,1)) = titik_mutasi_2;
    temp_parent(parent,index(2,1)) = titik_mutasi_1;
    offspring(5,:)=temp_parent(1,:);

    % %======= baca data dari database dan penjumlahan=====
    % jumlah energi per baris
    % 
    for i=1:5
        %     energi, karbo, protein, lemak, harga pokok
        id=offspring(i,1);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pokok where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_pokok_c{1}= get(rs, 'Data');
        id=offspring(i,6);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pokok where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_pokok_c{2}= get(rs, 'Data');
        id=offspring(i,11);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pokok where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_pokok_c{3}= get(rs, 'Data');
        for a=1:3
            total_pokok_m(a,:)=total_pokok_c{a};
        end
        total_pokok_matriks=cell2mat(total_pokok_m);
        for b=1:5
            total_pokok(1,b)=sum(total_pokok_matriks(:,b))
        end
    %     energi, karbo, protein, lemak, harga nabati
        id=offspring(i,2);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM nabati where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_nabati_c{1}= get(rs, 'Data');
        id=offspring(i,7);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM nabati where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_nabati_c{2}= get(rs, 'Data');
        id=offspring(i,12);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM nabati where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_nabati_c{3}= get(rs, 'Data');
        for a=1:3
            total_nabati_m(a,:)=total_nabati_c{a};
        end
        total_nabati_matriks=cell2mat(total_nabati_m);
        for b=1:5
            total_nabati(1,b)=sum(total_nabati_matriks(:,b))
        end
    %     energi, karbo, protein, lemak, harga hewani
        id=offspring(i,3);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM hewani where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_hewani_c{1}= get(rs, 'Data');
        id=offspring(i,8);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM hewani where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_hewani_c{2}= get(rs, 'Data');
        id=offspring(i,13);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM hewani where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_hewani_c{3}= get(rs, 'Data');
        for a=1:3
            total_hewani_m(a,:)=total_hewani_c{a};
        end
        total_hewani_matriks=cell2mat(total_hewani_m);
        for b=1:5
            total_hewani(1,b)=sum(total_hewani_matriks(:,b))
        end
    %     energi, karbo, protein, lemak, harga sayuran
        id=offspring(i,4);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM sayuran where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_sayuran_c{1}= get(rs, 'Data');
        id=offspring(i,9);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM sayuran where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_sayuran_c{2}= get(rs, 'Data');
        id=offspring(i,14);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM sayuran where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_sayuran_c{3}= get(rs, 'Data');
        for a=1:3
            total_sayuran_m(a,:)=total_sayuran_c{a};
        end
        total_sayuran_matriks=cell2mat(total_sayuran_m);
        for b=1:5
            total_sayuran(1,b)=sum(total_sayuran_matriks(:,b))
        end
    %     energi, karbo, protein, lemak, harga pelengkap
        id=offspring(i,5);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pelengkap where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_pelengkap_c{1}= get(rs, 'Data');
        id=offspring(i,10);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pelengkap where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_pelengkap_c{2}= get(rs, 'Data');
        id=offspring(i,15);
        query = sprintf('SELECT energi, karbo, protein, lemak, harga FROM pelengkap where id="%d"',id);
        rs = fetch(exec(conn, query));
        total_pelengkap_c{3}= get(rs, 'Data');
        for a=1:3
            total_pelengkap_m(a,:)=total_pelengkap_c{a};
        end
        total_pelengkap_matriks=cell2mat(total_pelengkap_m);
        for b=1:5
            total_pelengkap(1,b)=sum(total_pelengkap_matriks(:,b))
        end

           % total energi
        total(i,1)=total_pokok(1,1)+total_nabati(1,1)+total_hewani(1,1)+total_sayuran(1,1)+total_pelengkap(1,1);
        % total karbo
        total(i,2)=total_pokok(1,2)+total_nabati(1,2)+total_hewani(1,2)+total_sayuran(1,2)+total_pelengkap(1,2);
        % total protein 
        total(i,3)=total_pokok(1,3)+total_nabati(1,3)+total_hewani(1,3)+total_sayuran(1,3)+total_pelengkap(1,3);
        % total lemak
        total(i,4)=total_pokok(1,4)+total_nabati(1,4)+total_hewani(1,4)+total_sayuran(1,4)+total_pelengkap(1,4);
        % total harga
        total(i,5)=total_pokok(1,5)+total_nabati(1,5)+total_hewani(1,5)+total_sayuran(1,5)+total_pelengkap(1,5);
        %  hitung penalti
    %     penalti energi
        if (total(i,1)>=energi)
            total(i,6)=0;
        else total(i,6)=energi-total(i,1);
        end
    %     penalti karbo
        if (total(i,2)>=karbo)
            total(i,7)=0;
        else total(i,7)=karbo-total(i,2);
        end
    %     penalti protein
        if (total(i,3)>=protein)
            total(i,8)=0;
        else total(i,8)=protein-total(i,3);
        end
    %     penalti lemak
        if (total(i,4)>=lemak)
            total(i,9)=0;
        else total(i,9)=lemak-total(i,4);
        end
    end

    % hitung fitness per baris
    total_penalti=sum(total(:,6:9));
    total_penalti=sum(total_penalti);
    for i=1:5
        fitness(i,1)=1/(total(i,5)+total_penalti);
    end

    % % semua individu
    combine_offspring=[offspring,total,fitness];
    individu=vertcat(generasi,combine_offspring);

    % % elitism selection
    individu = sortrows(individu,-25);
    generasi = individu (1:10,:);
    temp_individu=[individu(1,1:15),individu(1,20),individu(1,25)];
    solusi (z+1,:)=temp_individu;
%     solusi (z+1,2)=mean(individu(:,20));

end
% % =================================================================
% optimum=[generasi(:,1:15),generasi(:,20),generasi(:,25)];
set(handles.Offspring,'Userdata',solusi);
t=uitable('Data', solusi, 'ColumnName',...
        {'Pokok 1', 'Nabati 1','Hewani 1','Sayuran 1','Pelengkap 1','Pokok 2', 'Nabati 2','Hewani 2','Sayuran 2','Pelengkap 2','Pokok 3', 'Nabati 3','Hewani 3','Sayuran 3','Pelengkap 3','Harga','Fitness'},...
        'Position', [530 132 571 161]);


id=solusi(jumlah_generasi+1,1);
query = sprintf('SELECT nama FROM pokok where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{1}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,2);
query = sprintf('SELECT nama FROM nabati where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{2}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,3);
query = sprintf('SELECT nama FROM hewani where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{3}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,4);
query = sprintf('SELECT nama FROM sayuran where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{4}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,5);
query = sprintf('SELECT nama FROM pelengkap where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{5}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,6);
query = sprintf('SELECT nama FROM pokok where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{6}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,7);
query = sprintf('SELECT nama FROM nabati where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{7}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,8);
query = sprintf('SELECT nama FROM hewani where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{8}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,9);
query = sprintf('SELECT nama FROM sayuran where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{9}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,10);
query = sprintf('SELECT nama FROM pelengkap where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{10}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,11);
query = sprintf('SELECT nama FROM pokok where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{11}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,12);
query = sprintf('SELECT nama FROM nabati where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{12}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,13);
query = sprintf('SELECT nama FROM hewani where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{13}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,14);
query = sprintf('SELECT nama FROM sayuran where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{14}= get(rs, 'Data');

id=solusi(jumlah_generasi+1,15);
query = sprintf('SELECT nama FROM pelengkap where id="%d"',id);
rs = fetch(exec(conn, query));
nama_solusi_c{15}= get(rs, 'Data');
for i=1:15
    nama_solusi_m(i,:)=nama_solusi_c{i};
end
nama_solusi_m=nama_solusi_m';
keterangan_solusi=[nama_solusi_m,solusi(jumlah_generasi+1,16),solusi(jumlah_generasi+1,17)];
set(handles.Solusi,'Userdata',keterangan_solusi);
t=uitable('Data', keterangan_solusi, 'ColumnName',...
        {'Pokok 1', 'Nabati 1','Hewani 1','Sayuran 1','Pelengkap 1','Pokok 2', 'Nabati 2','Hewani 2','Sayuran 2','Pelengkap 2','Pokok 3', 'Nabati 3','Hewani 3','Sayuran 3','Pelengkap 3','Harga','Fitness'},...
        'Position', [15 16 1086 93]);

waktu=toc;
set(handles.time,'String',waktu);



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
