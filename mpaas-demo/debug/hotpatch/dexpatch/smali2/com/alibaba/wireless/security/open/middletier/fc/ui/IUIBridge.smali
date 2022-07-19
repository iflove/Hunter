.class public interface abstract Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUIBridge;
.super Ljava/lang/Object;


# static fields
.field public static final INTENT_ACTIVITY_CREATE:Ljava/lang/String; = "com.alibaba.wireless.security.open.middletier.fc.ui.BXIntentCreate4323"

.field public static final INTENT_ACTIVITY_RESULT:Ljava/lang/String; = "com.alibaba.wireless.security.open.middletier.fc.ui.BXIntentResult4323"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "BXExtraInfoSession4323"

.field public static final KEY_UI_INFO:Ljava/lang/String; = "BXExtraInfoUIInfo4323"

.field public static final KEY_UI_RESULT:Ljava/lang/String; = "BXExtraInfoUIResult4323"

.field public static final UI_CANCEL:I = 0x4

.field public static final UI_FAIL:I = 0x2

.field public static final UI_SUCCESS:I = 0x1

.field public static final UI_TIMEOUT:I = 0x8


# virtual methods
.method public abstract addUIItem(JLjava/lang/Object;)V
.end method

.method public abstract clearTimeoutItem(J)V
.end method

.method public abstract removeUIItem(J)V
.end method
