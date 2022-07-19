.class public final LR$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final bizType:I

.field public static final dotColor:I

.field public static final tabBackground:I

.field public static final tabIndicatorColor:I

.field public static final tabIndicatorHeight:I

.field public static final tabIndicatorScrollable:I

.field public static final tabMaxWidth:I

.field public static final tabMinWidth:I

.field public static final tabPadding:I

.field public static final tabSelectedTextColor:I

.field public static final tabTextAppearance:I

.field public static final tabTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-string v0, "attr"

    const-string v1, "bizType"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, LR$attr;->bizType:I

    .line 17
    const-string v1, "dotColor"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, LR$attr;->dotColor:I

    .line 18
    const-string/jumbo v1, "tabBackground"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, LR$attr;->tabBackground:I

    .line 19
    const-string/jumbo v1, "tabIndicatorColor"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, LR$attr;->tabIndicatorColor:I

    .line 20
    const-string/jumbo v1, "tabIndicatorHeight"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, LR$attr;->tabIndicatorHeight:I

    .line 21
    const-string/jumbo v1, "tabIndicatorScrollable"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, LR$attr;->tabIndicatorScrollable:I

    .line 22
    const-string/jumbo v1, "tabMaxWidth"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, LR$attr;->tabMaxWidth:I

    .line 23
    const-string/jumbo v1, "tabMinWidth"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, LR$attr;->tabMinWidth:I

    .line 24
    const-string/jumbo v1, "tabPadding"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, LR$attr;->tabPadding:I

    .line 25
    const-string/jumbo v1, "tabSelectedTextColor"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, LR$attr;->tabSelectedTextColor:I

    .line 26
    const-string/jumbo v1, "tabTextAppearance"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, LR$attr;->tabTextAppearance:I

    .line 27
    const-string/jumbo v1, "tabTextColor"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, LR$attr;->tabTextColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
