.class public final Lcom/mpaas/demo/nebula/api/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/nebula/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final activity_customize:I

.field public static final activity_main:I

.field public static final activity_mini_app:I

.field public static final activity_nebula_app:I

.field public static final activity_other_function:I

.field public static final h5_navigation_bar:I

.field public static final h5_navigation_menu_item:I

.field public static final h5_web_content:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    const-string v0, "layout"

    const-string v1, "activity_customize"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/api/R$layout;->activity_customize:I

    .line 79
    const-string v1, "com_mpaas_demo_nebula_activity_main"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/api/R$layout;->activity_main:I

    .line 80
    const-string v1, "activity_mini_app"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/api/R$layout;->activity_mini_app:I

    .line 81
    const-string v1, "activity_nebula_app"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/api/R$layout;->activity_nebula_app:I

    .line 82
    const-string v1, "activity_other_function"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/api/R$layout;->activity_other_function:I

    .line 83
    const-string v1, "com_mpaas_demo_nebula_h5_navigation_bar"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/api/R$layout;->h5_navigation_bar:I

    .line 84
    const-string v1, "h5_navigation_menu_item"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/api/R$layout;->h5_navigation_menu_item:I

    .line 85
    const-string v1, "com_mpaas_demo_nebula_h5_web_content"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/nebula/api/R$layout;->h5_web_content:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
