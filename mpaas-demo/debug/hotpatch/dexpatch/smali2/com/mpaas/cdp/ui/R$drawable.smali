.class public final Lcom/mpaas/cdp/ui/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/cdp/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static final mcdp_native_close_btn:I

.field public static final mcdp_native_line:I

.field public static final mcp_splash_round_img:I

.field public static final mdefault_notice_icon:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-string v0, "drawable"

    const-string v1, "mcdp_native_close_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/ui/R$drawable;->mcdp_native_close_btn:I

    .line 23
    const-string v1, "mcdp_native_line"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/ui/R$drawable;->mcdp_native_line:I

    .line 24
    const-string v1, "mcp_splash_round_img"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/ui/R$drawable;->mcp_splash_round_img:I

    .line 25
    const-string v1, "mdefault_notice_icon"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/cdp/ui/R$drawable;->mdefault_notice_icon:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
