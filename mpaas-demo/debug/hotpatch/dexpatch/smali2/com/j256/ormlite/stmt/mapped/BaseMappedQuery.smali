.class public abstract Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "BaseMappedQuery.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement<",
        "TT;TID;>;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private columnPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Ljava/lang/Object;

.field private parentId:Ljava/lang/Object;

.field protected final resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;


# direct methods
.method protected constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 1
    .param p1, "tableInfo"    # Lcom/j256/ormlite/table/TableInfo;
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "resultsFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    .line 31
    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parentId:Ljava/lang/Object;

    .line 37
    iput-object p4, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 38
    return-void
.end method


# virtual methods
.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 13
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            ")TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "colPosMap":Ljava/util/Map;
    goto :goto_0

    .line 45
    .end local v0    # "colPosMap":Ljava/util/Map;
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    .line 48
    .restart local v0    # "colPosMap":Ljava/util/Map;
    :goto_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->getObjectCache()Lcom/j256/ormlite/dao/ObjectCache;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 49
    .local v3, "objectCache":Lcom/j256/ormlite/dao/ObjectCache;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v1, p1, v0}, Lcom/j256/ormlite/field/FieldType;->resultToJava(Lcom/j256/ormlite/support/DatabaseResults;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, "id":Ljava/lang/Object;
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->clazz:Ljava/lang/Class;

    invoke-interface {v3, v4, v1}, Lcom/j256/ormlite/dao/ObjectCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    .line 52
    .local v5, "cachedInstance":Ljava/lang/Object;
    move-object v5, v4

    if-eqz v4, :cond_1

    .line 54
    return-object v5

    .line 59
    .end local v1    # "id":Ljava/lang/Object;
    .end local v5    # "cachedInstance":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->createObject()Ljava/lang/Object;

    move-result-object v1

    .line 61
    .local v1, "instance":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 62
    .local v4, "id":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 63
    .local v5, "foreignCollections":Z
    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v5

    const/4 v10, 0x0

    move-object v5, v4

    move-object v4, v2

    .end local v4    # "id":Ljava/lang/Object;
    .local v5, "id":Ljava/lang/Object;
    .local v9, "foreignCollections":Z
    :goto_1
    if-ge v10, v7, :cond_5

    aget-object v11, v6, v10

    .line 64
    .local v2, "fieldType":Lcom/j256/ormlite/field/FieldType;
    move-object v2, v11

    invoke-virtual {v11}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 65
    const/4 v9, 0x1

    goto :goto_3

    .line 67
    :cond_2
    invoke-virtual {v2, p1, v0}, Lcom/j256/ormlite/field/FieldType;->resultToJava(Lcom/j256/ormlite/support/DatabaseResults;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v11

    .line 74
    .local v4, "val":Ljava/lang/Object;
    move-object v4, v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    if-eqz v11, :cond_3

    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->getField()Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    iget-object v12, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parentId:Ljava/lang/Object;

    .line 75
    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 76
    iget-object v11, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    const/4 v12, 0x1

    invoke-virtual {v2, v1, v11, v12, v3}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {v2, v1, v4, v8, v3}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 80
    :goto_2
    iget-object v11, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->idField:Lcom/j256/ormlite/field/FieldType;

    if-ne v2, v11, :cond_4

    .line 81
    move-object v5, v4

    .line 63
    .end local v2    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v4    # "val":Ljava/lang/Object;
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 85
    :cond_5
    if-eqz v9, :cond_7

    .line 87
    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v7, v6

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v7, :cond_7

    aget-object v11, v6, v10

    .line 88
    .restart local v2    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    move-object v2, v11

    invoke-virtual {v11}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 89
    invoke-virtual {v2, v1, v5}, Lcom/j256/ormlite/field/FieldType;->buildForeignCollection(Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/dao/BaseForeignCollection;

    move-result-object v11

    .line 90
    .local v4, "collection":Lcom/j256/ormlite/dao/BaseForeignCollection;
    move-object v4, v11

    if-eqz v11, :cond_6

    .line 91
    invoke-virtual {v2, v1, v4, v8, v3}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 87
    .end local v2    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v4    # "collection":Lcom/j256/ormlite/dao/BaseForeignCollection;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 97
    :cond_7
    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    .line 98
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->clazz:Ljava/lang/Class;

    invoke-interface {v3, v2, v5, v1}, Lcom/j256/ormlite/dao/ObjectCache;->put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    :cond_8
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    if-nez v2, :cond_9

    .line 101
    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    .line 103
    :cond_9
    return-object v1
.end method

.method public setParentInformation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "parentId"    # Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    .line 111
    iput-object p2, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parentId:Ljava/lang/Object;

    .line 112
    return-void
.end method
