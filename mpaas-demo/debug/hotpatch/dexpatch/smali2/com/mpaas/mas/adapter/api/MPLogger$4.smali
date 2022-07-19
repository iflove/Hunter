.class final Lcom/mpaas/mas/adapter/api/MPLogger$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/mas/adapter/api/MPLogger;->setMPLogEncryptor(Lcom/mpaas/mas/adapter/api/MPLogEncryptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$encryptor:Lcom/mpaas/mas/adapter/api/MPLogEncryptor;


# direct methods
.method constructor <init>(Lcom/mpaas/mas/adapter/api/MPLogEncryptor;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/mpaas/mas/adapter/api/MPLogger$4;->val$encryptor:Lcom/mpaas/mas/adapter/api/MPLogEncryptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/mpaas/mas/adapter/api/MPLogger$4;->val$encryptor:Lcom/mpaas/mas/adapter/api/MPLogEncryptor;

    invoke-interface {v0, p1}, Lcom/mpaas/mas/adapter/api/MPLogEncryptor;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final decrypt([B)[B
    .locals 1
    .param p1, "bytes"    # [B

    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public final encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/mpaas/mas/adapter/api/MPLogger$4;->val$encryptor:Lcom/mpaas/mas/adapter/api/MPLogEncryptor;

    invoke-interface {v0, p1}, Lcom/mpaas/mas/adapter/api/MPLogEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final encrypt([B)[B
    .locals 1
    .param p1, "bytes"    # [B

    .line 399
    const/4 v0, 0x0

    return-object v0
.end method
