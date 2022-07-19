.class public final Lcom/alipay/mobile/share/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/share/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final client_application_bg:I

.field public static final dialogButtonStyle:I

.field public static final friend_item_view:I

.field public static final share_select_dialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 333
    const-string v0, "style"

    const-string v1, "client_application_bg_com_alipay_mobile_share"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/share/R$style;->client_application_bg:I

    .line 334
    const-string v1, "dialogButtonStyle"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/share/R$style;->dialogButtonStyle:I

    .line 335
    const-string v1, "friend_item_view"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/share/R$style;->friend_item_view:I

    .line 336
    const-string v1, "share_select_dialog"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/share/R$style;->share_select_dialog:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
