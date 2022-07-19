.class public final Lcom/alibaba/motu/videoplayermonitor/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/videoplayermonitor/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static final thin_progress_thumb:I

.field public static final watermark_border_text:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-string v0, "color"

    const-string/jumbo v1, "thin_progress_thumb"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alibaba/motu/videoplayermonitor/R$color;->thin_progress_thumb:I

    .line 12
    const-string/jumbo v1, "watermark_border_text"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/motu/videoplayermonitor/R$color;->watermark_border_text:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
