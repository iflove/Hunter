.class final Lcom/mpaas/nebula/adapter/api/MPNebula$1;
.super Ljava/lang/Object;
.source "MPNebula.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5PublicRsaProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/adapter/api/MPNebula;->enableAppVerification(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$publicKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPNebula$1;->val$publicKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPublicRsa()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPNebula$1;->val$publicKey:Ljava/lang/String;

    return-object v0
.end method
