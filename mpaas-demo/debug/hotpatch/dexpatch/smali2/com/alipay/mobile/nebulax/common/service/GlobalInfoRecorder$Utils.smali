.class public Lcom/alipay/mobile/nebulax/common/service/GlobalInfoRecorder$Utils;
.super Ljava/lang/Object;
.source "GlobalInfoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/common/service/GlobalInfoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    const-class v0, Lcom/alipay/mobile/nebulax/common/service/GlobalInfoRecorder;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/common/service/GlobalInfoRecorder;

    .line 23
    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebulax/common/service/GlobalInfoRecorder;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method
