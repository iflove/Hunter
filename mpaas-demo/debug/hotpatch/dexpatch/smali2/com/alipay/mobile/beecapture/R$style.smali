.class public final Lcom/alipay/mobile/beecapture/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/beecapture/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final sty_capture_preview_action_btn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 286
    const-string/jumbo v0, "style"

    const-string/jumbo v1, "sty_capture_preview_action_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/beecapture/R$style;->sty_capture_preview_action_btn:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
