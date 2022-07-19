.class public final Lcom/alipay/mobile/nebulaappproxy/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final bottom_tip_offset:I

.field public static final h5_audialog_content_auth_content_maxheight:I

.field public static final h5_auth_scrollview_content_height:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-string v0, "dimen"

    const-string v1, "bottom_tip_offset"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebulaappproxy/R$dimen;->bottom_tip_offset:I

    .line 20
    const-string v1, "h5_audialog_content_auth_content_maxheight"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebulaappproxy/R$dimen;->h5_audialog_content_auth_content_maxheight:I

    .line 21
    const-string v1, "h5_auth_scrollview_content_height"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/nebulaappproxy/R$dimen;->h5_auth_scrollview_content_height:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
