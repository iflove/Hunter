.class public final Lcom/mpaas/demo/materialdesign/R$menu;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/materialdesign/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "menu"
.end annotation


# static fields
.field public static final mmd_activity_main_drawer:I

.field public static final mmd_main:I

.field public static final mmd_popup_menu_main:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 294
    const-string v0, "menu"

    const-string v1, "mmd_activity_main_drawer"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/R$menu;->mmd_activity_main_drawer:I

    .line 295
    const-string v1, "mmd_main"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/R$menu;->mmd_main:I

    .line 296
    const-string v1, "mmd_popup_menu_main"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/materialdesign/R$menu;->mmd_popup_menu_main:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
