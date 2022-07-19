.class public Lcom/alipay/mobile/util/wifichecker/MapConstructor;
.super Ljava/lang/Object;
.source "MapConstructor.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2081537587dc9958L


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/util/wifichecker/MapConstructor;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/util/wifichecker/MapConstructor;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/util/wifichecker/MapConstructor;->key:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/util/wifichecker/MapConstructor;->value:Ljava/lang/String;

    .line 31
    return-void
.end method
