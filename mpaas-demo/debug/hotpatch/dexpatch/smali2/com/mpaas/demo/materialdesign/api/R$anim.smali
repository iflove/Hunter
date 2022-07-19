.class public final Lcom/mpaas/demo/materialdesign/api/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/materialdesign/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static final mmd_anim_about_card_show:I

.field public static final mmd_anim_recycler_item_show:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-string v0, "anim"

    const-string v1, "mmd_anim_about_card_show"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$anim;->mmd_anim_about_card_show:I

    .line 12
    const-string v1, "mmd_anim_recycler_item_show"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/materialdesign/api/R$anim;->mmd_anim_recycler_item_show:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
