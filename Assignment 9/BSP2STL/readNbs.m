function nrbs=readNbs(filename,isPlot)
%%% isPlot: whether not plot NURBS
fp=fopen(filename, 'r');
if fp==-1
    error('NURBS data file not found');
end
while ~feof(fp)
    tline=fgetl(fp);
    eld=sscanf(tline,'%d %d')';% Degree
    order1=eld(1)+1;
    order2=eld(2)+1;
    
    tline=fgetl(fp);
    kntno=sscanf(tline,'%d %d')';% Knots number
    kntsno1=kntno(1);
    knots1=zeros(1,kntsno1);
    kntsno2=kntno(2);
    knots2=zeros(1,kntsno2);
    
    tline=fgetl(fp);
    ncp=sscanf(tline,'%d %d')';% Control points number
    ncp1=ncp(1);
    ncp2=ncp(2);
    
    %%% Knots U
    tline=fgetl(fp);
    counter=0;
    while counter<kntsno1
        counter=counter+1;
        tline=fgetl(fp);
        datline=sscanf(tline,'%d) %e');
        if counter~=round(datline(1)),error('!!!');end
        knots1(counter)=datline(2);
    end
    
    %%% Knots V
    tline=fgetl(fp);
    counter=0;
    while counter<kntsno2
        counter=counter+1;
        tline=fgetl(fp);
        datline=sscanf(tline,'%d) %e');
        if counter~=round(datline(1)),error('!!!');end
        knots2(counter)=datline(2);
    end
    
    %%% Control points
    tline=fgetl(fp);
    counter=0;
    seccpc=zeros(3,ncp1*ncp2);
    seccpw=zeros(1,ncp1*ncp2);
    while counter<ncp1*ncp2
        counter=counter+1;
        tline=fgetl(fp);
        datline=sscanf(tline,'%d) %e %e %e %e');
        if counter~=round(datline(1)),error('!!!');end
        seccpc(:,counter)=datline(2:4);
        seccpw(counter)=datline(5);
    end
    seccph=[seccpc.*repmat(seccpw,3,1);seccpw];
    nrbs.type   = 'Surface';
    nrbs.number = [ncp1 ncp2];
    nrbs.coefs=reshape(seccph,[4,ncp1,ncp2]);
    nrbs.knots = {knots1 knots2};
    nrbs.order = [order1 order2];
end
fclose(fp);

if isPlot=='y'
    plotNrbs(nrbs);
end
