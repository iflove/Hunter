.class public final Lcom/mpaas/demo/antui/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/antui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final AU_SPACE3:I

.field public static final center_avatar_icon_size:I

.field public static final center_avatar_item_height:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "dimen"

    const-string v1, "AU_SPACE3"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/antui/R$dimen;->AU_SPACE3:I

    .line 33
    const-string v1, "center_avatar_icon_size"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/antui/R$dimen;->center_avatar_icon_size:I

    .line 34
    const-string v1, "center_avatar_item_height"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/antui/R$dimen;->center_avatar_item_height:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
