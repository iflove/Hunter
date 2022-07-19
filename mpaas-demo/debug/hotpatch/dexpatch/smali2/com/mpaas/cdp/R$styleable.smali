.class public final Lcom/mpaas/cdp/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/cdp/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ad:[I

.field public static final ad_space_code:I

.field public static final mcdp_RoundAngleImageView:[I

.field public static final mcdp_RoundAngleImageView_mcdp_circleBackground:I

.field public static final mcdp_RoundAngleImageView_mcdp_circlePadding:I

.field public static final mcdp_RoundAngleImageView_mcdp_roundHeight:I

.field public static final mcdp_RoundAngleImageView_mcdp_roundWidth:I

.field public static final mcdp_RoundAngleImageView_mcdp_showRound:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-string v0, "styleable"

    const-string v1, "ad"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassArrayWithOutException(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    sput-object v1, Lcom/mpaas/cdp/R$styleable;->ad:[I

    .line 32
    const-string v1, "ad_space_code"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/R$styleable;->ad_space_code:I

    .line 33
    const-string v1, "mcdp_RoundAngleImageView"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassArrayWithOutException(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    sput-object v1, Lcom/mpaas/cdp/R$styleable;->mcdp_RoundAngleImageView:[I

    .line 34
    const-string v1, "mcdp_RoundAngleImageView_mcdp_circleBackground"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/R$styleable;->mcdp_RoundAngleImageView_mcdp_circleBackground:I

    .line 35
    const-string v1, "mcdp_RoundAngleImageView_mcdp_circlePadding"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/R$styleable;->mcdp_RoundAngleImageView_mcdp_circlePadding:I

    .line 36
    const-string v1, "mcdp_RoundAngleImageView_mcdp_roundHeight"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/R$styleable;->mcdp_RoundAngleImageView_mcdp_roundHeight:I

    .line 37
    const-string v1, "mcdp_RoundAngleImageView_mcdp_roundWidth"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/cdp/R$styleable;->mcdp_RoundAngleImageView_mcdp_roundWidth:I

    .line 38
    const-string v1, "mcdp_RoundAngleImageView_mcdp_showRound"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/cdp/R$styleable;->mcdp_RoundAngleImageView_mcdp_showRound:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
