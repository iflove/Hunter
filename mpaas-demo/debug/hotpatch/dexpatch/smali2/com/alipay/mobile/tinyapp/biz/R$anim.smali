.class public final Lcom/alipay/mobile/tinyapp/biz/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/tinyapp/biz/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static final tiny_app_share_in:I

.field public static final tiny_app_share_out:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    const-string v0, "anim"

    const-string v1, "tiny_app_share_in"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/tinyapp/biz/R$anim;->tiny_app_share_in:I

    .line 7
    const-string v1, "tiny_app_share_out"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/tinyapp/biz/R$anim;->tiny_app_share_out:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
