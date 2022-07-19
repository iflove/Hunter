.class public Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "H5BugMeSettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 70
    instance-of v0, p1, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 71
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 72
    .local v0, "group":Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 73
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->a(Landroid/preference/Preference;)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "group":Landroid/preference/PreferenceGroup;
    .end local v1    # "index":I
    :cond_0
    return-void

    .line 76
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->b(Landroid/preference/Preference;)V

    .line 78
    return-void
.end method

.method private static b(Landroid/preference/Preference;)V
    .locals 3
    .param p0, "preference"    # Landroid/preference/Preference;

    .line 81
    instance-of v0, p0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p0

    check-cast v0, Landroid/preference/ListPreference;

    .line 83
    .local v0, "listPref":Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    .end local v0    # "listPref":Landroid/preference/ListPreference;
    return-void

    :cond_0
    instance-of v0, p0, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_2

    .line 85
    move-object v0, p0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 86
    .local v0, "editTextPref":Landroid/preference/EditTextPreference;
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const-string v1, "******"

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    .end local v0    # "editTextPref":Landroid/preference/EditTextPreference;
    .end local v1    # "text":Ljava/lang/String;
    return-void

    :cond_2
    instance-of v0, p0, Landroid/preference/MultiSelectListPreference;

    if-eqz v0, :cond_3

    .line 94
    move-object v0, p0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 95
    .restart local v0    # "editTextPref":Landroid/preference/EditTextPreference;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    .end local v0    # "editTextPref":Landroid/preference/EditTextPreference;
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/alipay/mobile/nebula/R$xml;->h5_bugme_setting:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->addPreferencesFromResource(I)V

    .line 30
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->a(Landroid/preference/Preference;)V

    .line 33
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-nez v0, :cond_0

    .line 35
    const-string v0, "h5_bugme_advance_category"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 36
    .local v0, "category":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    :cond_0
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5BugMeSettingsFragment"

    const-string v2, "Remove debug setting"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->b(Landroid/preference/Preference;)V

    .line 67
    return-void
.end method
