.class public interface abstract Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "sgmiddletier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;
    }
.end annotation


# static fields
.field public static final KEY_BX_SLEEP:Ljava/lang/String; = "bx-sleep"

.field public static final KEY_LOGIN_MODULE:Ljava/lang/String; = "key_login_module"

.field public static final KEY_RESEND_DATA:Ljava/lang/String; = "key-resend-data"


# virtual methods
.method public abstract getFCPluginVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract needFCProcessOrNot(ILjava/util/HashMap;Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract processFCContent(ILjava/util/HashMap;Lcom/alibaba/wireless/security/open/middletier/fc/IFCActionCallback;Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract setUp(Landroid/content/Context;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method
