.class public Lcom/oneplus/settings/OPGestureAnswerSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPGestureAnswerSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final GESTURE_TO_ANSWER_CALL_KEY:Ljava/lang/String; = "gesture_answer_call"

.field private static final GESTURE_TO_ROUTE_AUDIO_KEY:Ljava/lang/String; = "gesture_route_audio"

.field private static final MDM_PHONE_APP_ID:Ljava/lang/String; = "YXKF6G2OQE"

.field private static final OPGUEST_ANSWER_CALL:Ljava/lang/String; = "opguest_answer_call"

.field private static final OPGUEST_ANSWER_CALLT_URI:Landroid/net/Uri;

.field private static final OPGUEST_ROUTE_AUDIO:Ljava/lang/String; = "opguest_route_audio"

.field private static final OPGUEST_ROUTE_AUDIO_URI:Landroid/net/Uri;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mGestureAnswerCall:Landroidx/preference/SwitchPreference;

.field private mGestureRouteAudio:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "opguest_answer_call"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, OPGUEST_ANSWER_CALLT_URI:Landroid/net/Uri;

    const-string v0, "opguest_route_audio"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, OPGUEST_ROUTE_AUDIO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/OPGestureAnswerSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPGestureAnswerSettings$1;-><init>(Lcom/oneplus/settings/OPGestureAnswerSettings;Landroid/os/Handler;)V

    iput-object v0, p0, mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    sget-object v0, OPGUEST_ANSWER_CALLT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPGestureAnswerSettings;)Z
    .locals 1

    invoke-direct {p0}, isGestureAnswerOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    sget-object v0, OPGUEST_ROUTE_AUDIO_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, mGestureRouteAudio:Landroidx/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/OPGestureAnswerSettings;)Z
    .locals 1

    invoke-direct {p0}, isGestureRouteAudio()Z

    move-result v0

    return v0
.end method

.method private isGestureAnswerOn()Z
    .locals 3

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "opguest_answer_call"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private isGestureRouteAudio()Z
    .locals 3

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "opguest_route_audio"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setGestureAnswerOn(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "YXKF6G2OQE"

    const-string v2, "phone.answer"

    const-string v3, "gestureon"

    invoke-static {v1, v2, v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opguest_answer_call"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setGestureAudioRoute(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "YXKF6G2OQE"

    const-string v2, "phone.answer"

    const-string v3, "gestureswitch"

    invoke-static {v1, v2, v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opguest_route_audio"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f16009f

    invoke-virtual {p0, v0}, addPreferencesFromResource(I)V

    const-string v0, "gesture_answer_call"

    invoke-virtual {p0, v0}, findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, isGestureAnswerOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->supportGestureAudioRoute()Z

    move-result v0

    const-string v1, "gesture_route_audio"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, mGestureRouteAudio:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, mGestureRouteAudio:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, isGestureRouteAudio()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, mGestureRouteAudio:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f120d95

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    iget-object v0, p0, mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setTitle(I)V

    iget-object v0, p0, mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, setGestureAnswerOn(Z)V

    return v1

    :cond_0
    iget-object v0, p0, mGestureRouteAudio:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, setGestureAudioRoute(Z)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opguest_answer_call"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opguest_route_audio"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
