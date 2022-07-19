.class public abstract Lcom/alipay/mobile/framework/service/ShareService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "ShareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;
    }
.end annotation


# static fields
.field public static final WEIBO_IMG_HD:I = 0x3

.field public static final WEIBO_IMG_LOW:I = 0x1

.field public static final WEIBO_IMG_MID:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract AuthWeibo(Lcom/alipay/mobile/common/share/AuthWeiboListener;)V
.end method

.method public abstract AuthWeixin()V
.end method

.method public abstract getAuthWeiboListener()Lcom/alipay/mobile/common/share/AuthWeiboListener;
.end method

.method public abstract getContactShareListener()Lcom/alipay/mobile/common/share/ContactShareListener;
.end method

.method public abstract getGroupShareListener()Lcom/alipay/mobile/common/share/GroupShareListener;
.end method

.method public abstract getQRCodeShareInterceptor()Lcom/alipay/mobile/common/share/QRCodeShareInterceptor;
.end method

.method public abstract getShareActionListener()Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;
.end method

.method public abstract getShareSearchCodeListener()Lcom/alipay/mobile/common/share/ShareSearchCodeListener;
.end method

.method public abstract getShareTokenListener()Lcom/alipay/mobile/common/share/ShareTokenListener;
.end method

.method public abstract getTencentFilterListener()Lcom/alipay/mobile/common/share/TencentFilterListener;
.end method

.method public abstract getWeiboUserPic(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/common/share/GetWeiboUserPicListener;)V
.end method

.method public abstract getWeixinUserPic(Ljava/lang/String;)V
.end method

.method public abstract getWeixinUserPicListener()Lcom/alipay/mobile/common/share/GetWeixinUserPicListener;
.end method

.method public abstract initAlipayContact(Ljava/lang/String;)V
.end method

.method public abstract initDingDing(Ljava/lang/String;)V
.end method

.method public abstract initLaiwang(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract initQQ(Ljava/lang/String;)V
.end method

.method public abstract initQZone(Ljava/lang/String;)V
.end method

.method public abstract initWeiBo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract initWeixin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isChannelClientInstalled(I)Z
.end method

.method public abstract isDingDingInstalled(Landroid/content/Context;)Z
.end method

.method public abstract isDingDingSupported(Landroid/content/Context;)Z
.end method

.method public abstract setAppName(Ljava/lang/String;)V
.end method

.method public abstract setContactShareListener(Lcom/alipay/mobile/common/share/ContactShareListener;)V
.end method

.method public abstract setGroupShareListener(Lcom/alipay/mobile/common/share/GroupShareListener;)V
.end method

.method public abstract setQRCodeShareInterceptor(Lcom/alipay/mobile/common/share/QRCodeShareInterceptor;)V
.end method

.method public abstract setShareActionListener(Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;)V
.end method

.method public abstract setShareSearchCodeListener(Lcom/alipay/mobile/common/share/ShareSearchCodeListener;)V
.end method

.method public abstract setShareTokenListener(Lcom/alipay/mobile/common/share/ShareTokenListener;)V
.end method

.method public abstract setTencentFilterListener(Lcom/alipay/mobile/common/share/TencentFilterListener;)V
.end method

.method public abstract setWeixinUserPicListener(Lcom/alipay/mobile/common/share/GetWeixinUserPicListener;)V
.end method

.method public abstract shareMMFriendsByIntent(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)Z
.end method

.method public abstract shareMMTimelineByIntent(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)Z
.end method

.method public abstract silentShare(Lcom/alipay/mobile/common/share/ShareContent;ILjava/lang/String;)V
.end method

.method public abstract unRegisterAuthWeiboListener()V
.end method
