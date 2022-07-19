.class public Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeGuard;
.super Ljava/lang/Object;
.source "BridgeGuard.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/security/Guard;


# instance fields
.field private permission:Lcom/alipay/mobile/nebulax/kernel/security/Permission;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/security/Permission;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeGuard;->permission:Lcom/alipay/mobile/nebulax/kernel/security/Permission;

    .line 15
    return-void
.end method


# virtual methods
.method public permit()Lcom/alipay/mobile/nebulax/kernel/security/Permission;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeGuard;->permission:Lcom/alipay/mobile/nebulax/kernel/security/Permission;

    return-object v0
.end method
