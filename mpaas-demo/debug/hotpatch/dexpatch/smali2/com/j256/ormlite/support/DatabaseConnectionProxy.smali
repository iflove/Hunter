.class public Lcom/j256/ormlite/support/DatabaseConnectionProxy;
.super Ljava/lang/Object;
.source "DatabaseConnectionProxy.java"

# interfaces
.implements Lcom/j256/ormlite/support/DatabaseConnection;


# instance fields
.field private final proxy:Lcom/j256/ormlite/support/DatabaseConnection;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 0
    .param p1, "proxy"    # Lcom/j256/ormlite/support/DatabaseConnection;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseConnection;->close()V

    .line 145
    :cond_0
    return-void
.end method

.method public closeQuietly()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseConnection;->closeQuietly()V

    .line 151
    :cond_0
    return-void
.end method

.method public commit(Ljava/sql/Savepoint;)V
    .locals 1
    .param p1, "savePoint"    # Ljava/sql/Savepoint;

    .line 63
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    .line 66
    :cond_0
    return-void
.end method

.method public compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;I)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "resultFlags"    # I

    .line 84
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;I)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argfieldTypes"    # [Lcom/j256/ormlite/field/FieldType;

    .line 109
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/j256/ormlite/support/DatabaseConnection;->delete(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I

    move-result v0

    return v0
.end method

.method public executeStatement(Ljava/lang/String;I)I
    .locals 1
    .param p1, "statementStr"    # Ljava/lang/String;
    .param p2, "resultFlags"    # I

    .line 75
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/j256/ormlite/support/DatabaseConnection;->executeStatement(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/GeneratedKeyHolder;)I
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argfieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "keyHolder"    # Lcom/j256/ormlite/support/GeneratedKeyHolder;

    .line 93
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/j256/ormlite/support/DatabaseConnection;->insert(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/GeneratedKeyHolder;)I

    move-result v0

    return v0
.end method

.method public isAutoCommit()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    return v0

    .line 44
    :cond_0
    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommit()Z

    move-result v0

    return v0
.end method

.method public isAutoCommitSupported()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_0
    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommitSupported()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_0
    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseConnection;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isTableExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->isTableExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public queryForLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "statement"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 127
    const-wide/16 v0, 0x0

    return-wide v0

    .line 129
    :cond_0
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public queryForLong(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)J
    .locals 2
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;

    .line 134
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 135
    const-wide/16 v0, 0x0

    return-wide v0

    .line 137
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public queryForOne(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 6
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argfieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "rowMapper"    # Lcom/j256/ormlite/stmt/GenericRowMapper;
    .param p5, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForOne(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 1
    .param p1, "savePoint"    # Ljava/sql/Savepoint;

    .line 69
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 1
    .param p1, "autoCommit"    # Z

    .line 49
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 52
    :cond_0
    return-void
.end method

.method public setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argfieldTypes"    # [Lcom/j256/ormlite/field/FieldType;

    .line 101
    iget-object v0, p0, Lcom/j256/ormlite/support/DatabaseConnectionProxy;->proxy:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/j256/ormlite/support/DatabaseConnection;->update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I

    move-result v0

    return v0
.end method
