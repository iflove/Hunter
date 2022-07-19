.class public Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;
.super Ljava/lang/Object;
.source "OrmLiteEncryptionProcessor.java"


# static fields
.field private static ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    return-object p0
.end method

.method public static decrypt([B)[B
    .locals 1
    .param p0, "input"    # [B

    .line 35
    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;->decrypt([B)[B

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    return-object p0
.end method

.method public static encrypt([B)[B
    .locals 1
    .param p0, "input"    # [B

    .line 28
    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;->encrypt([B)[B

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    return-object p0
.end method

.method public static getOrmLiteEncryptionAgent()Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;
    .locals 1

    .line 20
    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    return-object v0
.end method

.method public static setOrmLiteEncryptionAgent(Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;)V
    .locals 0
    .param p0, "ea"    # Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    .line 24
    sput-object p0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    .line 25
    return-void
.end method
