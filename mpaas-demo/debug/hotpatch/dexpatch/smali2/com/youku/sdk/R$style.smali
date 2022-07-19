.class public final Lcom/youku/sdk/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final AppBaseTheme:I

.field public static final AppTheme:I

.field public static final edit_button_style:I

.field public static final sty_video_progress_seek:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    const-string v0, "style"

    const-string v1, "AppBaseTheme_com_alipay_mobile_beevideo"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/youku/sdk/R$style;->AppBaseTheme:I

    .line 127
    const-string v1, "AppTheme_com_alipay_mobile_beevideo"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/youku/sdk/R$style;->AppTheme:I

    .line 128
    const-string v1, "edit_button_style_com_alipay_mobile_beevideo"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/youku/sdk/R$style;->edit_button_style:I

    .line 129
    const-string v1, "sty_video_progress_seek_com_alipay_mobile_beevideo"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/sdk/R$style;->sty_video_progress_seek:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
