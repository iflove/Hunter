.class public Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;
.super Lcom/alipay/mobile/framework/service/notify/NotifyBellService;
.source "NotifyBellServiceImpl.java"


# static fields
.field private static final BUSINESS_NOTIFY:Ljava/lang/String; = "BusinessNotify"

.field private static final DEFAULT_VIBRATOR_TIME:J = 0x2bcL

.field private static final HOME_TIMELINE_NOTIFY:Ljava/lang/String; = "HomeTimelineNotify"

.field private static final SOCIAL_NOTIFY:Ljava/lang/String; = "SocailNotify"

.field private static final SOUND_OPEN:Ljava/lang/String; = "SoundOpen"

.field private static final SP_NAME:Ljava/lang/String; = "notifybell"

.field private static final TAG:Ljava/lang/String; = "NotifyBellServiceImpl"

.field private static final VIBRATION_OPEN:Ljava/lang/String; = "VibrationOpen"

.field public static final VOICE_PLAY_NOTIFY:Ljava/lang/String; = "VoicePlayNotify"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;-><init>()V

    return-void
.end method


# virtual methods
.method public isBusinessNotifyOpen()Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "BusinessNotify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHomeTimelineNotifyOpen()Z
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "HomeTimelineNotify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOpenSound()Z
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SoundOpen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOpenVibration()Z
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "VibrationOpen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSocialNotifyOpen()Z
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SocailNotify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVoicePlayNotifyOpen()Z
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "VoicePlayNotify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .line 84
    invoke-virtual {p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "notifybell"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    .line 87
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .line 92
    return-void
.end method

.method public playSound()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SoundOpen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x2

    .line 116
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 117
    .local v0, "alert":Landroid/net/Uri;
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 119
    .local v1, "player":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 120
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 121
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 122
    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 123
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 125
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 126
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 127
    new-instance v3, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$1;-><init>(Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;)V

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 134
    new-instance v3, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$2;-><init>(Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;)V

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v2    # "context":Landroid/content/Context;
    :cond_1
    return-void

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "NotifyBellServiceImpl"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public playSoundFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 80
    return-void
.end method

.method public playSystemAlert()V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->playSound()V

    .line 65
    return-void
.end method

.method public playSystemVibrate()V
    .locals 2

    .line 69
    const-wide/16 v0, 0x2bc

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->playVibration(J)V

    .line 70
    return-void
.end method

.method public playSystemVibrate(J)V
    .locals 0
    .param p1, "time"    # J

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->playVibration(J)V

    .line 75
    return-void
.end method

.method public playVibration(J)V
    .locals 4
    .param p1, "time"    # J

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "VibrationOpen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->vibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_1

    .line 102
    const-string/jumbo v1, "vibrator"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->vibrator:Landroid/os/Vibrator;

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "NotifyBellServiceImpl"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public setBusinessNotifyOpen(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 151
    const-string v1, "BusinessNotify"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    :cond_0
    return-void
.end method

.method public setHomeTimelineNotifyOpen(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 177
    const-string v1, "HomeTimelineNotify"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    :cond_0
    return-void
.end method

.method public setSocialNotifyOpen(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 164
    const-string v1, "SocailNotify"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    :cond_0
    return-void
.end method

.method public setSoundOpen(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 39
    const-string v1, "SoundOpen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    :cond_0
    return-void
.end method

.method public setVibrationOpen(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 52
    const-string v1, "VibrationOpen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    :cond_0
    return-void
.end method

.method public setVoicePlayNotifyOpen(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 190
    const-string v1, "VoicePlayNotify"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    :cond_0
    return-void
.end method
