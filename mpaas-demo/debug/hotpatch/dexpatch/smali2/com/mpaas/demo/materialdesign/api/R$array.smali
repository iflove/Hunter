.class public final Lcom/mpaas/demo/materialdesign/api/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/materialdesign/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static final mmd_dialog_choice_array:I

.field public static final mmd_settings_list_preference_titles:I

.field public static final mmd_settings_list_preference_values:I

.field public static final mmd_settings_multi_select_list_preference_titles:I

.field public static final mmd_settings_multi_select_list_preference_values:I

.field public static final mmd_spinner_array:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-string v0, "array"

    const-string v1, "mmd_dialog_choice_array"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$array;->mmd_dialog_choice_array:I

    .line 16
    const-string v1, "mmd_settings_list_preference_titles"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$array;->mmd_settings_list_preference_titles:I

    .line 17
    const-string v1, "mmd_settings_list_preference_values"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$array;->mmd_settings_list_preference_values:I

    .line 18
    const-string v1, "mmd_settings_multi_select_list_preference_titles"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$array;->mmd_settings_multi_select_list_preference_titles:I

    .line 19
    const-string v1, "mmd_settings_multi_select_list_preference_values"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$array;->mmd_settings_multi_select_list_preference_values:I

    .line 20
    const-string v1, "mmd_spinner_array"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/materialdesign/api/R$array;->mmd_spinner_array:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
