.class public Lcom/alipay/mobile/nebulax/engine/cube/d/a;
.super Ljava/lang/Object;
.source "CKAppFactory.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alipay/mobile/nebulax/engine/cube/d/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":CubeSpa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/cube/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/antfin/cube/cubecore/api/CKApp;
    .locals 1

    .line 15
    nop

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    const-string p1, "cubejstask"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 20
    new-instance p3, Lcom/alipay/mobile/nebulax/engine/cube/d/b;

    invoke-direct {p3, p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/d/b;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 22
    :cond_0
    sget-object p0, Lcom/alipay/mobile/nebulax/engine/cube/d/a;->a:Ljava/lang/String;

    const-string p1, "cubeJsTaskId is null"

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 25
    :goto_0
    goto :goto_1

    .line 26
    :cond_1
    invoke-static {p1, p2}, Lcom/alipay/mobile/antcube/AntCube;->createApp(Ljava/lang/String;Landroid/os/Bundle;)Lcom/antfin/cube/cubecore/api/CKApp;

    move-result-object p3

    .line 29
    :goto_1
    return-object p3
.end method
