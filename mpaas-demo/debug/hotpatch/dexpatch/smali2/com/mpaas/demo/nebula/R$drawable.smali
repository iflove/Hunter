.class public final Lcom/mpaas/demo/nebula/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/nebula/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static final back:I

.field public static final close:I

.field public static final h5_progress:I

.field public static final h5_pull_progress:I

.field public static final h5_title_bar_progress_bg_gold:I

.field public static final h5_wv_progress:I

.field public static final smile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-string v0, "drawable"

    const-string v1, "back"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/R$drawable;->back:I

    .line 12
    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/R$drawable;->close:I

    .line 13
    const-string v1, "h5_progress"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/R$drawable;->h5_progress:I

    .line 14
    const-string v1, "h5_pull_progress"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/R$drawable;->h5_pull_progress:I

    .line 15
    const-string v1, "h5_title_bar_progress_bg_gold"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/R$drawable;->h5_title_bar_progress_bg_gold:I

    .line 16
    const-string v1, "com_mpaas_demo_nebula_h5_wv_progress"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/R$drawable;->h5_wv_progress:I

    .line 17
    const-string v1, "smile"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/nebula/R$drawable;->smile:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
