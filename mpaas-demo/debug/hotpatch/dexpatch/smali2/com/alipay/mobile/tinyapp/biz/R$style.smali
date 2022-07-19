.class public final Lcom/alipay/mobile/tinyapp/biz/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/tinyapp/biz/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final TinyShareDialogAnim:I

.field public static final TinyShareDialogTheme:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    const-string v0, "style"

    const-string v1, "TinyShareDialogAnim"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/tinyapp/biz/R$style;->TinyShareDialogAnim:I

    .line 110
    const-string v1, "TinyShareDialogTheme"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/tinyapp/biz/R$style;->TinyShareDialogTheme:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
