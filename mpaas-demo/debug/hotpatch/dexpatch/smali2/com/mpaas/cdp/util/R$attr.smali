.class public final Lcom/mpaas/cdp/util/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/cdp/util/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final mcdp_circleBackground:I

.field public static final mcdp_circlePadding:I

.field public static final mcdp_roundHeight:I

.field public static final mcdp_roundWidth:I

.field public static final mcdp_showRound:I

.field public static final space_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-string v0, "attr"

    const-string v1, "mcdp_circleBackground"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/util/R$attr;->mcdp_circleBackground:I

    .line 12
    const-string v1, "mcdp_circlePadding"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/util/R$attr;->mcdp_circlePadding:I

    .line 13
    const-string v1, "mcdp_roundHeight"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/util/R$attr;->mcdp_roundHeight:I

    .line 14
    const-string v1, "mcdp_roundWidth"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/util/R$attr;->mcdp_roundWidth:I

    .line 15
    const-string v1, "mcdp_showRound"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/util/R$attr;->mcdp_showRound:I

    .line 16
    const-string v1, "space_code"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/cdp/util/R$attr;->space_code:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
