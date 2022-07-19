.class public abstract Lcom/j256/ormlite/stmt/BaseArgumentHolder;
.super Ljava/lang/Object;
.source "BaseArgumentHolder.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/ArgumentHolder;


# instance fields
.field private columnName:Ljava/lang/String;

.field private fieldType:Lcom/j256/ormlite/field/FieldType;

.field private sqlType:Lcom/j256/ormlite/field/SqlType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->columnName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->fieldType:Lcom/j256/ormlite/field/FieldType;

    .line 24
    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->sqlType:Lcom/j256/ormlite/field/SqlType;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/field/SqlType;)V
    .locals 1
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->columnName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->fieldType:Lcom/j256/ormlite/field/FieldType;

    .line 24
    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->sqlType:Lcom/j256/ormlite/field/SqlType;

    .line 35
    iput-object p1, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->sqlType:Lcom/j256/ormlite/field/SqlType;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "columName"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->columnName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->fieldType:Lcom/j256/ormlite/field/FieldType;

    .line 24
    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->sqlType:Lcom/j256/ormlite/field/SqlType;

    .line 31
    iput-object p1, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->columnName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldType()Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->fieldType:Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getSqlArgValue()Ljava/lang/Object;
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->isValueSet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 88
    .local v2, "value":Ljava/lang/Object;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 89
    return-object v1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->fieldType:Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_1

    .line 91
    return-object v2

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->isForeign()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->fieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->fieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->getForeignIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->fieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 85
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Column value has not been set for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->columnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSqlType()Lcom/j256/ormlite/field/SqlType;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->sqlType:Lcom/j256/ormlite/field/SqlType;

    return-object v0
.end method

.method protected abstract getValue()Ljava/lang/Object;
.end method

.method protected abstract isValueSet()Z
.end method

.method public setMetaInfo(Lcom/j256/ormlite/field/FieldType;)V
    .locals 3
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .line 67
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->fieldType:Lcom/j256/ormlite/field/FieldType;

    if-eqz v0, :cond_1

    .line 69
    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FieldType name cannot be set twice from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->fieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Using a SelectArg twice in query with different columns?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->fieldType:Lcom/j256/ormlite/field/FieldType;

    .line 76
    return-void
.end method

.method public setMetaInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->columnName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Column name cannot be set twice from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->columnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".  Using a SelectArg twice in query with different columns?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->columnName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setMetaInfo(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;)V
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .line 79
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->setMetaInfo(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->setMetaInfo(Lcom/j256/ormlite/field/FieldType;)V

    .line 81
    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->isValueSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const-string v0, "[unset]"

    return-object v0

    .line 115
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->getSqlArgValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    .local v1, "val":Ljava/lang/Object;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 117
    const-string v0, "[null]"

    return-object v0

    .line 119
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 121
    .end local v1    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[could not get value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
