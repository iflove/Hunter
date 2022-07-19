.class public final Lcom/abq/qba/a/a;
.super Ljava/lang/Object;
.source "MergeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abq/qba/a/a$c;,
        Lcom/abq/qba/a/a$e;,
        Lcom/abq/qba/a/a$b;,
        Lcom/abq/qba/a/a$a;,
        Lcom/abq/qba/a/a$d;
    }
.end annotation


# direct methods
.method private static a(Lcom/abq/qba/e/f;)I
    .locals 3
    .param p0, "pkg"    # Lcom/abq/qba/e/f;

    .line 1092
    const/4 v0, 0x0

    .line 1093
    .local v0, "currentMax":I
    invoke-virtual {p0}, Lcom/abq/qba/e/f;->k()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1094
    .local v2, "typeId":I
    if-ge v0, v2, :cond_0

    .line 1095
    move v0, v2

    .line 1097
    .end local v2    # "typeId":I
    :cond_0
    goto :goto_0

    .line 1098
    :cond_1
    return v0
.end method

.method private static a(ILjava/lang/String;)Lcom/abq/qba/e/d;
    .locals 4
    .param p0, "customPackageId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1069
    const/16 v0, 0x110

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 1070
    .local v2, "libByteBuffer":Ljava/nio/ByteBuffer;
    move-object v2, v1

    sget-object v3, Lcom/abq/qba/e/a$a;->n:Lcom/abq/qba/e/a$a;

    invoke-virtual {v3}, Lcom/abq/qba/e/a$a;->a()S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1071
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1072
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1073
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1074
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1075
    invoke-static {v2, p1}, Lcom/abq/qba/e/g;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1078
    invoke-static {v2}, Lcom/abq/qba/e/a;->c(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/a;

    move-result-object v0

    check-cast v0, Lcom/abq/qba/e/d;

    return-object v0
.end method

.method private static a(Ljava/util/List;)Lcom/abq/qba/e/j;
    .locals 5
    .param p0, "arscList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/j;",
            ">;)",
            "Lcom/abq/qba/e/j;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 693
    .local v0, "mergedArsc":Lcom/abq/qba/e/j;
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 694
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/abq/qba/e/j;

    .line 695
    new-instance v1, Lcom/abq/qba/a/a$c;

    invoke-direct {v1}, Lcom/abq/qba/a/a$c;-><init>()V

    .line 696
    .local v1, "mergeResult":Lcom/abq/qba/a/a$c;
    invoke-static {v0}, Lcom/seiginonakama/res/utils/VisitUtils;->getResTableFrom(Lcom/abq/qba/e/j;)Lcom/abq/qba/e/l;

    move-result-object v2

    .line 697
    .local v2, "resourceTableChunk":Lcom/abq/qba/e/l;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 698
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 699
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/abq/qba/e/j;

    invoke-static {v4}, Lcom/seiginonakama/res/utils/VisitUtils;->getResTableFrom(Lcom/abq/qba/e/j;)Lcom/abq/qba/e/l;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/abq/qba/a/a;->a(Lcom/abq/qba/e/l;Lcom/abq/qba/e/l;Lcom/abq/qba/a/a$c;)V

    .line 698
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 702
    .end local v3    # "i":I
    :cond_0
    invoke-static {v2}, Lcom/abq/qba/a/a;->a(Lcom/abq/qba/e/l;)V

    .line 703
    .end local v1    # "mergeResult":Lcom/abq/qba/a/a$c;
    .end local v2    # "resourceTableChunk":Lcom/abq/qba/e/l;
    goto :goto_1

    .line 704
    :cond_1
    const/4 v0, 0x0

    .line 706
    :goto_1
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 288
    return-object p0
.end method

.method private static a(Lcom/abq/qba/e/f;Lcom/abq/qba/e/f;)V
    .locals 16
    .param p0, "combineTo"    # Lcom/abq/qba/e/f;
    .param p1, "combineFrom"    # Lcom/abq/qba/e/f;

    .line 959
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->g()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/abq/qba/e/f;->g()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->h()Lcom/abq/qba/e/o;

    move-result-object v2

    iget-object v2, v2, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 964
    .local v2, "keyOffset":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 965
    .local v5, "tmp":Ljava/util/List;
    move-object v5, v3

    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->h()Lcom/abq/qba/e/o;

    move-result-object v6

    iget-object v6, v6, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->h()Lcom/abq/qba/e/o;

    move-result-object v3

    iget-object v3, v3, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/abq/qba/e/f;->h()Lcom/abq/qba/e/o;

    move-result-object v6

    iget-object v6, v6, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 967
    invoke-virtual/range {p1 .. p1}, Lcom/abq/qba/e/f;->h()Lcom/abq/qba/e/o;

    move-result-object v3

    iget-object v3, v3, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 969
    new-instance v3, Lcom/abq/qba/a/a$1;

    invoke-direct {v3, v2}, Lcom/abq/qba/a/a$1;-><init>(I)V

    invoke-static {v1, v3}, Lcom/seiginonakama/res/utils/VisitUtils;->visitEntry(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 976
    invoke-static/range {p0 .. p0}, Lcom/abq/qba/a/a;->a(Lcom/abq/qba/e/f;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/abq/qba/a/a;->a(Lcom/abq/qba/e/f;)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 977
    .local v3, "maxTypeId":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .local v6, "typeStrings":Ljava/util/List;
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 979
    .local v7, "combinedTypeChunksMap":Ljava/util/LinkedHashMap;
    const/4 v8, 0x1

    move-object v9, v4

    move-object v10, v9

    .local v8, "i":I
    :goto_0
    if-gt v8, v3, :cond_3

    .line 983
    .local v9, "typeSpecChunk":Lcom/abq/qba/e/s;
    .local v10, "typeChunksPkg":Lcom/abq/qba/e/f;
    invoke-virtual {v1, v8}, Lcom/abq/qba/e/f;->c(I)Lcom/abq/qba/e/s;

    move-result-object v11

    .line 984
    move-object v9, v11

    if-eqz v11, :cond_0

    .line 985
    move-object/from16 v10, p1

    goto :goto_1

    .line 987
    :cond_0
    invoke-virtual {v0, v8}, Lcom/abq/qba/e/f;->c(I)Lcom/abq/qba/e/s;

    move-result-object v9

    .line 988
    move-object/from16 v10, p0

    .line 999
    :goto_1
    if-eqz v9, :cond_2

    .line 1000
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/abq/qba/a/a$e;

    invoke-virtual {v10, v8}, Lcom/abq/qba/e/f;->b(I)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v9, v13}, Lcom/abq/qba/a/a$e;-><init>(Lcom/abq/qba/e/s;Ljava/util/List;)V

    invoke-virtual {v7, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    .line 1003
    invoke-virtual {v10}, Lcom/abq/qba/e/f;->i()Lcom/abq/qba/e/o;

    move-result-object v11

    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v11, v12}, Lcom/abq/qba/e/o;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1001
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "there has same type when combinePackageChunk, typeId:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v9, Lcom/abq/qba/e/s;->e:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1005
    :cond_2
    const-string v11, "<empty>"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    .end local v9    # "typeSpecChunk":Lcom/abq/qba/e/s;
    .end local v10    # "typeChunksPkg":Lcom/abq/qba/e/f;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1009
    .end local v8    # "i":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->i()Lcom/abq/qba/e/o;

    move-result-object v8

    iget-object v8, v8, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 1010
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->i()Lcom/abq/qba/e/o;

    move-result-object v8

    iget-object v8, v8, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1017
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1019
    .local v8, "combinedChunks":Ljava/util/Map;
    iget v9, v0, Lcom/abq/qba/e/f;->d:I

    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->c()I

    move-result v10

    add-int/2addr v9, v10

    .line 1020
    .local v9, "offset":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->i()Lcom/abq/qba/e/o;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    iget v10, v0, Lcom/abq/qba/e/f;->d:I

    sub-int v10, v9, v10

    .line 1022
    .local v10, "newTypeStringsOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->i()Lcom/abq/qba/e/o;

    move-result-object v11

    invoke-virtual {v11}, Lcom/abq/qba/e/o;->e()[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v9, v11

    .line 1024
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->h()Lcom/abq/qba/e/o;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    iget v11, v0, Lcom/abq/qba/e/f;->d:I

    sub-int v11, v9, v11

    .line 1026
    .local v11, "newKeyStringsOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->h()Lcom/abq/qba/e/o;

    move-result-object v12

    invoke-virtual {v12}, Lcom/abq/qba/e/o;->e()[B

    move-result-object v12

    array-length v12, v12

    add-int/2addr v9, v12

    .line 1028
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1029
    .local v4, "allTypes":Ljava/util/List;
    move-object v4, v12

    new-instance v13, Lcom/abq/qba/a/a$2;

    invoke-direct {v13}, Lcom/abq/qba/a/a$2;-><init>()V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->k()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->j()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 1039
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/abq/qba/a/a$e;

    .line 1041
    .local v13, "typeChunkPair":Lcom/abq/qba/a/a$e;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v13, Lcom/abq/qba/a/a$e;->a:Lcom/abq/qba/e/s;

    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget-object v14, v13, Lcom/abq/qba/a/a$e;->a:Lcom/abq/qba/e/s;

    invoke-virtual {v14}, Lcom/abq/qba/e/s;->d()I

    move-result v14

    add-int/2addr v9, v14

    .line 1043
    iget-object v14, v13, Lcom/abq/qba/a/a$e;->b:Ljava/util/List;

    if-eqz v14, :cond_4

    .line 1044
    iget-object v14, v13, Lcom/abq/qba/a/a$e;->b:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/abq/qba/e/r;

    .line 1045
    .local v15, "typeChunk":Lcom/abq/qba/e/r;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    invoke-virtual {v15}, Lcom/abq/qba/e/r;->d()I

    move-result v1

    add-int/2addr v9, v1

    .line 1047
    .end local v15    # "typeChunk":Lcom/abq/qba/e/r;
    move-object/from16 v1, p1

    goto :goto_4

    .line 1050
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->k()Ljava/util/Map;

    move-result-object v1

    iget-object v14, v13, Lcom/abq/qba/a/a$e;->a:Lcom/abq/qba/e/s;

    invoke-virtual {v14}, Lcom/abq/qba/e/s;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v13, Lcom/abq/qba/a/a$e;->a:Lcom/abq/qba/e/s;

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->j()Ljava/util/Map;

    move-result-object v1

    iget-object v14, v13, Lcom/abq/qba/a/a$e;->a:Lcom/abq/qba/e/s;

    invoke-virtual {v14}, Lcom/abq/qba/e/s;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v13, Lcom/abq/qba/a/a$e;->b:Ljava/util/List;

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    .end local v13    # "typeChunkPair":Lcom/abq/qba/a/a$e;
    move-object/from16 v1, p1

    goto :goto_3

    .line 1054
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->m()Lcom/abq/qba/e/d;

    move-result-object v1

    .line 1055
    .local v12, "libraryChunk":Lcom/abq/qba/e/d;
    move-object v12, v1

    if-nez v1, :cond_6

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->g()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/f;->l()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/abq/qba/a/a;->a(ILjava/lang/String;)Lcom/abq/qba/e/d;

    move-result-object v12

    .line 1058
    :cond_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    iput-object v8, v0, Lcom/abq/qba/e/f;->e:Ljava/util/Map;

    .line 1062
    iput v10, v0, Lcom/abq/qba/e/f;->g:I

    .line 1063
    iput v11, v0, Lcom/abq/qba/e/f;->h:I

    .line 1064
    return-void

    .line 960
    .end local v2    # "keyOffset":I
    .end local v3    # "maxTypeId":I
    .end local v4    # "allTypes":Ljava/util/List;
    .end local v5    # "tmp":Ljava/util/List;
    .end local v6    # "typeStrings":Ljava/util/List;
    .end local v7    # "combinedTypeChunksMap":Ljava/util/LinkedHashMap;
    .end local v8    # "combinedChunks":Ljava/util/Map;
    .end local v9    # "offset":I
    .end local v10    # "newTypeStringsOffset":I
    .end local v11    # "newKeyStringsOffset":I
    .end local v12    # "libraryChunk":Lcom/abq/qba/e/d;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can\'t combine the PackageChunk they has different package id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Lcom/abq/qba/e/l;)V
    .locals 13
    .param p0, "tableChunk"    # Lcom/abq/qba/e/l;

    .line 862
    invoke-virtual {p0}, Lcom/abq/qba/e/l;->g()Lcom/abq/qba/e/o;

    move-result-object v0

    .line 864
    .local v0, "stringPool":Lcom/abq/qba/e/o;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 865
    .local v1, "stringRefMap":Ljava/util/Map;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 868
    .local v2, "spanRefMap":Ljava/util/Map;
    iget-object v3, v0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/abq/qba/e/o$b;

    .line 869
    .local v5, "style":Lcom/abq/qba/e/o$b;
    invoke-virtual {v6}, Lcom/abq/qba/e/o$b;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/abq/qba/e/o$a;

    .line 870
    .local v7, "span":Lcom/abq/qba/e/o$a;
    invoke-virtual {v7}, Lcom/abq/qba/e/o$a;->a()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/abq/qba/e/o;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    .end local v7    # "span":Lcom/abq/qba/e/o$a;
    goto :goto_1

    .line 872
    .end local v5    # "style":Lcom/abq/qba/e/o$b;
    :cond_0
    goto :goto_0

    .line 874
    :cond_1
    invoke-virtual {p0}, Lcom/abq/qba/e/l;->h()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/abq/qba/e/f;

    .line 875
    .local v5, "pkg":Lcom/abq/qba/e/f;
    new-instance v7, Lcom/abq/qba/a/a$7;

    invoke-direct {v7, v1, v0, v2}, Lcom/abq/qba/a/a$7;-><init>(Ljava/util/Map;Lcom/abq/qba/e/o;Ljava/util/Map;)V

    invoke-static {v6, v7}, Lcom/seiginonakama/res/utils/VisitUtils;->visitResourceValue(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 888
    .end local v5    # "pkg":Lcom/abq/qba/e/f;
    goto :goto_2

    .line 890
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .local v3, "styles":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v5, "mergedStrings":Ljava/util/List;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v6, "styledStrings":Ljava/util/List;
    invoke-virtual {v0}, Lcom/abq/qba/e/o;->g()I

    move-result v7

    .line 896
    .local v7, "styleCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v7, :cond_3

    .line 897
    invoke-virtual {v0, v8}, Lcom/abq/qba/e/o;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    invoke-virtual {v0, v8}, Lcom/abq/qba/e/o;->c(I)Lcom/abq/qba/e/o$b;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 902
    .end local v8    # "i":I
    :cond_3
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 903
    .local v8, "unStyledStrings":Ljava/util/LinkedHashSet;
    move v9, v7

    .local v9, "i":I
    :goto_4
    invoke-virtual {v0}, Lcom/abq/qba/e/o;->f()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 904
    invoke-virtual {v0, v9}, Lcom/abq/qba/e/o;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 903
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 908
    .end local v9    # "i":I
    :cond_4
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 909
    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 911
    iget-object v9, v0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 912
    iget-object v9, v0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 914
    invoke-virtual {p0}, Lcom/abq/qba/e/l;->h()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/abq/qba/e/f;

    .line 915
    new-instance v11, Lcom/abq/qba/a/a$8;

    invoke-direct {v11, v2, v3, v1, v5}, Lcom/abq/qba/a/a$8;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    invoke-static {v10, v11}, Lcom/seiginonakama/res/utils/VisitUtils;->visitResourceValue(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 934
    goto :goto_5

    .line 936
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/abq/qba/e/o$b;

    .line 937
    invoke-virtual {v10}, Lcom/abq/qba/e/o$b;->a()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/abq/qba/e/o$a;

    .line 938
    .local v11, "span":Lcom/abq/qba/e/o$a;
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 939
    .local v4, "s":Ljava/lang/String;
    move-object v4, v12

    if-eqz v12, :cond_6

    .line 942
    invoke-interface {v5, v4}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v12

    .line 943
    .local v12, "index":I
    invoke-virtual {v11, v12}, Lcom/abq/qba/e/o$a;->a(I)I

    .line 944
    .end local v4    # "s":Ljava/lang/String;
    .end local v11    # "span":Lcom/abq/qba/e/o$a;
    .end local v12    # "index":I
    goto :goto_7

    .line 940
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v11    # "span":Lcom/abq/qba/e/o$a;
    :cond_6
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "can\'t find string for span "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 945
    .end local v4    # "s":Ljava/lang/String;
    .end local v11    # "span":Lcom/abq/qba/e/o$a;
    :cond_7
    goto :goto_6

    .line 949
    :cond_8
    return-void
.end method

.method private static a(Lcom/abq/qba/e/l;Lcom/abq/qba/e/l;)V
    .locals 12
    .param p0, "mergeTo"    # Lcom/abq/qba/e/l;
    .param p1, "mergeFrom"    # Lcom/abq/qba/e/l;

    .line 780
    invoke-virtual {p0}, Lcom/abq/qba/e/l;->g()Lcom/abq/qba/e/o;

    move-result-object v0

    .line 781
    .local v0, "mtStringPool":Lcom/abq/qba/e/o;
    invoke-virtual {p1}, Lcom/abq/qba/e/l;->g()Lcom/abq/qba/e/o;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 783
    .local v3, "mfStringPool":Lcom/abq/qba/e/o;
    move-object v3, v1

    invoke-virtual {v1}, Lcom/abq/qba/e/o;->g()I

    move-result v1

    const/4 v4, 0x0

    move v5, v4

    .line 784
    .local v5, "mfStyleCount":I
    move v5, v1

    if-nez v1, :cond_1

    .line 786
    iget-object v1, v0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 787
    .local v1, "stringOffset":I
    iget-object v4, v0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    iget-object v6, v3, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 788
    invoke-virtual {p1}, Lcom/abq/qba/e/l;->h()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/abq/qba/e/f;

    .line 789
    .local v2, "pkg":Lcom/abq/qba/e/f;
    new-instance v7, Lcom/abq/qba/a/a$4;

    invoke-direct {v7, v1}, Lcom/abq/qba/a/a$4;-><init>(I)V

    invoke-static {v6, v7}, Lcom/seiginonakama/res/utils/VisitUtils;->visitResourceValue(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 795
    .end local v2    # "pkg":Lcom/abq/qba/e/f;
    goto :goto_0

    .line 796
    .end local v1    # "stringOffset":I
    :cond_0
    return-void

    .line 803
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v2

    .line 804
    .local v6, "mtStyles":Ljava/util/List;
    move-object v6, v1

    iget-object v7, v0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 806
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v1, "mfStyles":Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v7, "mfStyledStrings":Ljava/util/List;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v5, :cond_2

    .line 809
    invoke-virtual {v3, v8}, Lcom/abq/qba/e/o;->c(I)Lcom/abq/qba/e/o$b;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-virtual {v3, v8}, Lcom/abq/qba/e/o;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 812
    .end local v8    # "i":I
    :cond_2
    iget-object v8, v0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v8, v4, v7}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 813
    iget-object v8, v0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 815
    .local v8, "mfStringOffset":I
    iget-object v9, v0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    iget-object v10, v3, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 817
    iget-object v9, v0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    invoke-interface {v9, v4, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 819
    invoke-virtual {p0}, Lcom/abq/qba/e/l;->h()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/abq/qba/e/f;

    .line 820
    new-instance v10, Lcom/abq/qba/a/a$5;

    invoke-direct {v10, v5}, Lcom/abq/qba/a/a$5;-><init>(I)V

    invoke-static {v9, v10}, Lcom/seiginonakama/res/utils/VisitUtils;->visitResourceValue(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 826
    goto :goto_2

    .line 828
    :cond_3
    invoke-virtual {p1}, Lcom/abq/qba/e/l;->h()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/abq/qba/e/f;

    .line 829
    new-instance v10, Lcom/abq/qba/a/a$6;

    invoke-direct {v10, v5, v8}, Lcom/abq/qba/a/a$6;-><init>(II)V

    invoke-static {v9, v10}, Lcom/seiginonakama/res/utils/VisitUtils;->visitResourceValue(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 842
    goto :goto_3

    .line 844
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/abq/qba/e/o$b;

    .line 845
    invoke-virtual {v9}, Lcom/abq/qba/e/o$b;->a()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/abq/qba/e/o$a;

    .line 846
    .local v2, "span":Lcom/abq/qba/e/o$a;
    move-object v2, v10

    invoke-virtual {v10}, Lcom/abq/qba/e/o$a;->a()I

    move-result v10

    .line 847
    .local v10, "nameIndex":I
    add-int v11, v10, v5

    invoke-virtual {v2, v11}, Lcom/abq/qba/e/o$a;->a(I)I

    .line 848
    .end local v2    # "span":Lcom/abq/qba/e/o$a;
    .end local v10    # "nameIndex":I
    goto :goto_5

    .line 849
    :cond_5
    goto :goto_4

    .line 851
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/abq/qba/e/o$b;

    .line 852
    invoke-virtual {v9}, Lcom/abq/qba/e/o$b;->a()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/abq/qba/e/o$a;

    .line 853
    .restart local v2    # "span":Lcom/abq/qba/e/o$a;
    move-object v2, v10

    invoke-virtual {v10}, Lcom/abq/qba/e/o$a;->a()I

    move-result v10

    .line 854
    .restart local v10    # "nameIndex":I
    add-int v11, v10, v8

    invoke-virtual {v2, v11}, Lcom/abq/qba/e/o$a;->a(I)I

    .line 855
    invoke-virtual {v2, v0}, Lcom/abq/qba/e/o$a;->a(Lcom/abq/qba/e/o;)V

    .line 856
    .end local v2    # "span":Lcom/abq/qba/e/o$a;
    .end local v10    # "nameIndex":I
    goto :goto_7

    .line 857
    :cond_7
    goto :goto_6

    .line 859
    .end local v1    # "mfStyles":Ljava/util/List;
    .end local v6    # "mtStyles":Ljava/util/List;
    .end local v7    # "mfStyledStrings":Ljava/util/List;
    .end local v8    # "mfStringOffset":I
    :cond_8
    return-void
.end method

.method private static a(Lcom/abq/qba/e/l;Lcom/abq/qba/e/l;Lcom/abq/qba/a/a$c;)V
    .locals 6
    .param p0, "mergeTo"    # Lcom/abq/qba/e/l;
    .param p1, "mergeFrom"    # Lcom/abq/qba/e/l;
    .param p2, "mergeResultOut"    # Lcom/abq/qba/a/a$c;

    .line 731
    invoke-static {p0, p1}, Lcom/abq/qba/a/a;->a(Lcom/abq/qba/e/l;Lcom/abq/qba/e/l;)V

    .line 733
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 734
    .local v0, "mergeToPkgMap":Ljava/util/Map;
    invoke-virtual {p0}, Lcom/abq/qba/e/l;->h()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/abq/qba/e/f;

    .line 735
    .local v2, "mergeToPkg":Lcom/abq/qba/e/f;
    invoke-virtual {v2}, Lcom/abq/qba/e/f;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .end local v2    # "mergeToPkg":Lcom/abq/qba/e/f;
    goto :goto_0

    .line 739
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 744
    .local v1, "mfIdMapping":Ljava/util/Map;
    invoke-virtual {p1}, Lcom/abq/qba/e/l;->h()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/abq/qba/e/f;

    .line 745
    .local v4, "mergeFromPkg":Lcom/abq/qba/e/f;
    invoke-virtual {v4}, Lcom/abq/qba/e/f;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/abq/qba/e/f;

    .line 746
    .local v3, "mergeToPkg":Lcom/abq/qba/e/f;
    move-object v3, v5

    if-eqz v5, :cond_1

    .line 749
    invoke-static {v3, v4}, Lcom/abq/qba/a/a;->a(Lcom/abq/qba/e/f;Lcom/abq/qba/e/f;)V

    goto :goto_1

    .line 772
    :cond_1
    invoke-virtual {p0, v4}, Lcom/abq/qba/e/l;->a(Lcom/abq/qba/e/f;)V

    .line 774
    .end local v3    # "mergeToPkg":Lcom/abq/qba/e/f;
    .end local v4    # "mergeFromPkg":Lcom/abq/qba/e/f;
    goto :goto_1

    .line 776
    :cond_2
    iput-object v1, p2, Lcom/abq/qba/a/a$c;->a:Ljava/util/Map;

    .line 777
    return-void
.end method

.method static synthetic a(Lcom/abq/qba/e/m;I)V
    .locals 0
    .param p0, "x0"    # Lcom/abq/qba/e/m;
    .param p1, "x1"    # I

    .line 59
    invoke-static {p0, p1}, Lcom/abq/qba/a/a;->b(Lcom/abq/qba/e/m;I)V

    return-void
.end method

.method public static varargs a(Ljava/util/zip/ZipOutputStream;Lcom/abq/qba/a/a$b;[Ljava/util/zip/ZipFile;)V
    .locals 0
    .param p0, "outputStream"    # Ljava/util/zip/ZipOutputStream;
    .param p1, "isRes"    # Lcom/abq/qba/a/a$b;
    .param p2, "pkgs"    # [Ljava/util/zip/ZipFile;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Lcom/abq/qba/a/a$b<",
            "Ljava/util/zip/ZipFile;",
            ">;[",
            "Ljava/util/zip/ZipFile;",
            ")V"
        }
    .end annotation

    .line 313
    invoke-static {p0, p1, p2}, Lcom/abq/qba/a/a;->b(Ljava/util/zip/ZipOutputStream;Lcom/abq/qba/a/a$b;[Ljava/util/zip/ZipFile;)V

    .line 314
    return-void
.end method

.method private static varargs a(Ljava/util/zip/ZipOutputStream;Lcom/abq/qba/a/a$d;[Ljava/util/zip/ZipFile;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Lcom/abq/qba/a/a$d<",
            "Ljava/util/zip/ZipFile;",
            ">;[",
            "Ljava/util/zip/ZipFile;",
            ")V"
        }
    .end annotation

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 372
    array-length v2, v1

    new-array v3, v2, [Lcom/abq/qba/e/j;

    .line 373
    array-length v4, v1

    new-array v5, v4, [Lcom/abq/qba/e/x;

    .line 375
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 376
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 377
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 380
    const/4 v10, 0x0

    :goto_0
    array-length v11, v1

    const-string v12, "AndroidManifest.xml"

    const-string/jumbo v13, "resources.arsc"

    if-ge v10, v11, :cond_9

    .line 381
    aget-object v11, v1, v10

    .line 382
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v14

    .line 383
    :goto_1
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 384
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/zip/ZipEntry;

    .line 385
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 386
    move-object/from16 v16, v14

    invoke-interface/range {p1 .. p1}, Lcom/abq/qba/a/a$d;->a()Lcom/abq/qba/a/a$b;

    move-result-object v14

    move/from16 v17, v4

    invoke-interface/range {p1 .. p1}, Lcom/abq/qba/a/a$d;->c()Z

    move-result v4

    invoke-static {v9, v14, v4}, Lcom/abq/qba/a/a;->a(Ljava/lang/String;Lcom/abq/qba/a/a$b;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 390
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    invoke-virtual {v11, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 393
    invoke-static {v4}, Lcom/abq/qba/e/j;->a(Ljava/io/InputStream;)Lcom/abq/qba/e/j;

    move-result-object v9

    aput-object v9, v3, v10

    .line 394
    invoke-static {v4}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 395
    move-object/from16 v14, v16

    move/from16 v4, v17

    goto :goto_1

    .line 397
    :cond_0
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 399
    invoke-virtual {v11, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 400
    invoke-static {v4}, Lcom/abq/qba/c/b;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 401
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/abq/qba/e/a;->c(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/a;

    move-result-object v4

    check-cast v4, Lcom/abq/qba/e/x;

    aput-object v4, v5, v10

    .line 402
    move-object/from16 v14, v16

    move/from16 v4, v17

    goto :goto_1

    .line 404
    :cond_1
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    invoke-static {v9}, Lcom/abq/qba/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 405
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 406
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 407
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    .line 408
    if-nez v14, :cond_2

    .line 409
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 410
    invoke-interface {v7, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_2
    if-nez v18, :cond_3

    .line 413
    move-object/from16 v19, v12

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 414
    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 412
    :cond_3
    move-object/from16 v19, v12

    move-object/from16 v12, v18

    .line 416
    :goto_2
    invoke-interface {v14, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-interface {v12, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    move-object v9, v4

    goto :goto_3

    .line 405
    :cond_4
    move-object/from16 v19, v12

    .line 420
    :goto_3
    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 421
    invoke-interface/range {p1 .. p1}, Lcom/abq/qba/a/a$d;->b()Z

    move-result v4

    if-nez v4, :cond_6

    .line 422
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v14, v16

    move/from16 v4, v17

    move-object/from16 v12, v19

    goto/16 :goto_1

    .line 426
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate entry:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_6
    invoke-virtual {v6, v9, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    move-object/from16 v14, v16

    move/from16 v4, v17

    move-object/from16 v12, v19

    goto/16 :goto_1

    .line 386
    :cond_7
    move-object/from16 v19, v12

    move-object/from16 v14, v16

    move/from16 v4, v17

    goto/16 :goto_1

    .line 380
    :cond_8
    move/from16 v17, v4

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 433
    :cond_9
    move/from16 v17, v4

    move-object/from16 v19, v12

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 435
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 436
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 437
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipFile;

    .line 438
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 439
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 440
    if-eqz v12, :cond_a

    invoke-interface {v12, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 441
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 442
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 443
    move-object v10, v12

    .line 447
    :cond_a
    invoke-virtual {v9, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v12

    .line 448
    if-eqz v12, :cond_d

    .line 449
    invoke-virtual {v9, v12}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 450
    invoke-static {v12}, Lcom/seiginonakama/res/utils/ZipUtils;->copy(Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    .line 451
    if-eqz v11, :cond_b

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 452
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 453
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 454
    invoke-static {v12, v10}, Lcom/seiginonakama/res/utils/ZipUtils;->copy(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    .line 457
    :cond_b
    invoke-virtual {v0, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 459
    :goto_5
    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_c

    .line 460
    const/4 v11, 0x0

    invoke-virtual {v0, v4, v11, v10}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_5

    .line 462
    :cond_c
    const/4 v11, 0x0

    invoke-static {v9}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    .line 448
    :cond_d
    const/4 v11, 0x0

    .line 464
    :goto_6
    goto :goto_4

    .line 466
    :cond_e
    const/4 v11, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 467
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v2, :cond_11

    .line 468
    aget-object v8, v3, v6

    .line 469
    aget-object v9, v1, v6

    .line 470
    if-eqz v8, :cond_10

    .line 471
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 472
    if-eqz v9, :cond_f

    .line 473
    invoke-static {v8}, Lcom/seiginonakama/res/utils/VisitUtils;->getResTableFrom(Lcom/abq/qba/e/j;)Lcom/abq/qba/e/l;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/seiginonakama/res/utils/ResUtils;->modifyResPath(Lcom/abq/qba/e/l;Ljava/util/Map;)V

    .line 475
    :cond_f
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 479
    :cond_11
    invoke-static {v4}, Lcom/abq/qba/a/a;->a(Ljava/util/List;)Lcom/abq/qba/e/j;

    move-result-object v1

    .line 481
    if-eqz v1, :cond_12

    .line 482
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v1}, Lcom/abq/qba/e/j;->b()[B

    move-result-object v1

    .line 484
    invoke-static {v2, v1}, Lcom/seiginonakama/res/utils/ApkUtils;->setNoCompress(Ljava/util/zip/ZipEntry;[B)V

    .line 485
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 486
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 489
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 490
    const/4 v9, 0x0

    :goto_8
    move/from16 v2, v17

    if-ge v9, v2, :cond_14

    aget-object v3, v5, v9

    .line 491
    if-eqz v3, :cond_13

    .line 492
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_13
    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v2

    goto :goto_8

    .line 495
    :cond_14
    invoke-static {v1}, Lcom/abq/qba/a/a;->b(Ljava/util/List;)Lcom/abq/qba/e/x;

    move-result-object v1

    .line 497
    if-eqz v1, :cond_15

    .line 498
    new-instance v2, Ljava/util/zip/ZipEntry;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 499
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 500
    invoke-virtual {v1}, Lcom/abq/qba/e/x;->e()[B

    move-result-object v1

    .line 501
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 502
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 505
    :cond_15
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 506
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/abq/qba/a/a$b;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "isRes"    # Lcom/abq/qba/a/a$b;
    .param p2, "mergeManifest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/abq/qba/a/a$b<",
            "TT;>;Z)Z"
        }
    .end annotation

    .line 563
    if-eqz p0, :cond_5

    .line 564
    const-string/jumbo v0, "res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string/jumbo v0, "res/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    .line 565
    invoke-interface {p1, p0}, Lcom/abq/qba/a/a$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 568
    :cond_0
    const-string v0, "assets"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "assets/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 571
    :cond_1
    const-string/jumbo v0, "resources.arsc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    return v1

    .line 574
    :cond_2
    if-eqz p2, :cond_5

    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 575
    return v1

    .line 569
    :cond_3
    :goto_0
    return v1

    .line 566
    :cond_4
    :goto_1
    return v1

    .line 578
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Ljava/util/List;)Lcom/abq/qba/e/x;
    .locals 3
    .param p0, "manifests"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/x;",
            ">;)",
            "Lcom/abq/qba/e/x;"
        }
    .end annotation

    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, "mergedManifest":Lcom/abq/qba/e/x;
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/abq/qba/e/x;

    .line 713
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 714
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 715
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/abq/qba/e/x;

    invoke-static {v0, v2}, Lcom/seiginonakama/res/utils/ManifestMerger;->mergeManifest(Lcom/abq/qba/e/x;Lcom/abq/qba/e/x;)Lcom/abq/qba/e/x;

    move-result-object v0

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 719
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static b(Lcom/abq/qba/e/m;I)V
    .locals 2
    .param p0, "value"    # Lcom/abq/qba/e/m;
    .param p1, "stringPoolOffset"    # I

    .line 953
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/abq/qba/e/m;->b()Lcom/abq/qba/e/m$a;

    move-result-object v0

    sget-object v1, Lcom/abq/qba/e/m$a;->d:Lcom/abq/qba/e/m$a;

    if-ne v0, v1, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/abq/qba/e/m;->c()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/m;->a(I)V

    .line 956
    :cond_0
    return-void
.end method

.method private static varargs b(Ljava/util/zip/ZipOutputStream;Lcom/abq/qba/a/a$b;[Ljava/util/zip/ZipFile;)V
    .locals 4
    .param p0, "outputStream"    # Ljava/util/zip/ZipOutputStream;
    .param p1, "isRes"    # Lcom/abq/qba/a/a$b;
    .param p2, "pkgs"    # [Ljava/util/zip/ZipFile;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Lcom/abq/qba/a/a$b<",
            "Ljava/util/zip/ZipFile;",
            ">;[",
            "Ljava/util/zip/ZipFile;",
            ")V"
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    array-length v1, p2

    if-eqz v1, :cond_2

    .line 331
    if-eqz p0, :cond_1

    .line 335
    new-instance v1, Lcom/abq/qba/a/a$3;

    invoke-direct {v1, p1}, Lcom/abq/qba/a/a$3;-><init>(Lcom/abq/qba/a/a$b;)V

    invoke-static {p0, v1, p2}, Lcom/abq/qba/a/a;->a(Ljava/util/zip/ZipOutputStream;Lcom/abq/qba/a/a$d;[Ljava/util/zip/ZipFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    if-eqz p2, :cond_0

    .line 353
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 354
    invoke-static {v2}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    invoke-static {p0}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 358
    return-void

    .line 332
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "outputStream is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "outputStream":Ljava/util/zip/ZipOutputStream;
    .end local p1    # "isRes":Lcom/abq/qba/a/a$b;
    .end local p2    # "pkgs":[Ljava/util/zip/ZipFile;
    throw v1

    .line 329
    .restart local p0    # "outputStream":Ljava/util/zip/ZipOutputStream;
    .restart local p1    # "isRes":Lcom/abq/qba/a/a$b;
    .restart local p2    # "pkgs":[Ljava/util/zip/ZipFile;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "combine pkg can\'t be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "outputStream":Ljava/util/zip/ZipOutputStream;
    .end local p1    # "isRes":Lcom/abq/qba/a/a$b;
    .end local p2    # "pkgs":[Ljava/util/zip/ZipFile;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    .restart local p0    # "outputStream":Ljava/util/zip/ZipOutputStream;
    .restart local p1    # "isRes":Lcom/abq/qba/a/a$b;
    .restart local p2    # "pkgs":[Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v1

    if-eqz p2, :cond_3

    .line 353
    array-length v2, p2

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, p2, v0

    .line 354
    invoke-static {v3}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 357
    :cond_3
    invoke-static {p0}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method
