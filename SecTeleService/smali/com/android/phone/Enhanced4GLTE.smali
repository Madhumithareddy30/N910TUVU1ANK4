.class public Lcom/android/phone/Enhanced4GLTE;
.super Landroid/preference/PreferenceActivity;
.source "Enhanced4GLTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Enhanced4GLTE$Enhanced4GLTEReceiver;
    }
.end annotation


# static fields
.field private static forcingVolteMenuEnable:Z


# instance fields
.field private mAirPlaneObserverRegister:Z

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mDataWarningDialog:Landroid/app/AlertDialog$Builder;

.field private final mEnhanced4GLTEReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mStandardData:Landroid/preference/CheckBoxPreference;

.field private mUCEEnabled:Landroid/preference/CheckBoxPreference;

.field private mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

.field private mWarnDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/Enhanced4GLTE;->forcingVolteMenuEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/Enhanced4GLTE;->mAirPlaneObserverRegister:Z

    new-instance v0, Lcom/android/phone/Enhanced4GLTE$Enhanced4GLTEReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Enhanced4GLTE$Enhanced4GLTEReceiver;-><init>(Lcom/android/phone/Enhanced4GLTE;Lcom/android/phone/Enhanced4GLTE$1;)V

    iput-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mEnhanced4GLTEReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    new-instance v0, Lcom/android/phone/Enhanced4GLTE$1;

    invoke-direct {v0, p0}, Lcom/android/phone/Enhanced4GLTE$1;-><init>(Lcom/android/phone/Enhanced4GLTE;)V

    iput-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/Enhanced4GLTE$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Enhanced4GLTE$2;-><init>(Lcom/android/phone/Enhanced4GLTE;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/Enhanced4GLTE$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Enhanced4GLTE$3;-><init>(Lcom/android/phone/Enhanced4GLTE;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mDataEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/Enhanced4GLTE$4;

    invoke-direct {v0, p0}, Lcom/android/phone/Enhanced4GLTE$4;-><init>(Lcom/android/phone/Enhanced4GLTE;)V

    iput-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/phone/Enhanced4GLTE;

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/phone/Enhanced4GLTE;->forcingVolteMenuEnable:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/phone/Enhanced4GLTE;

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/Enhanced4GLTE;)Z
    .locals 1
    .param p0    # Lcom/android/phone/Enhanced4GLTE;

    invoke-direct {p0}, Lcom/android/phone/Enhanced4GLTE;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/phone/Enhanced4GLTE;

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Enhanced4GLTE;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/Enhanced4GLTE;

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/Enhanced4GLTE;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/Enhanced4GLTE;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/Enhanced4GLTE;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getMobileDataEnabled()Z
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/Enhanced4GLTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private onStandardDataClicked()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lcom/android/phone/Enhanced4GLTE;->setMobileDataEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09052e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090529

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/Enhanced4GLTE$5;

    invoke-direct {v3, p0}, Lcom/android/phone/Enhanced4GLTE$5;-><init>(Lcom/android/phone/Enhanced4GLTE;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2
    .param p1    # Z

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/Enhanced4GLTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private updateStandardData()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    const-string v0, "Enhanced4GLTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileDataEnabled() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/Enhanced4GLTE;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/phone/Enhanced4GLTE;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/phone/Enhanced4GLTE;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data_configure"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data_configure"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f06001f

    invoke-virtual {p0, v4}, Lcom/android/phone/Enhanced4GLTE;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v4, "standard_data_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    const-string v4, "enhanced_4glte_services_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    const-string v4, "user_capabilities_exchange_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v3

    const-string v4, "Enhanced4GLTE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uceSupport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.android.phone.action.ENABLE_UCE_TOGGLE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mEnhanced4GLTEReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/Enhanced4GLTE;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v5, p0, Lcom/android/phone/Enhanced4GLTE;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v4, v5}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v7, p0, Lcom/android/phone/Enhanced4GLTE;->mAirPlaneObserverRegister:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string v1, "Enhanced4GLTE"

    const-string v2, "onDestroy..."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/phone/Enhanced4GLTE;->mAirPlaneObserverRegister:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->deRegisterForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "Enhanced4GLTE"

    const-string v7, "onPreferenceTreeClick..."

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_1

    invoke-direct {p0}, Lcom/android/phone/Enhanced4GLTE;->onStandardDataClicked()V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_type"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    const-string v6, "Enhanced4GLTE"

    const-string v7, "manual register for IMS"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v6}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    :cond_2
    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->mUCEToggleEnabled:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_1
    if-nez v2, :cond_3

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    sput-boolean v5, Lcom/android/phone/Enhanced4GLTE;->forcingVolteMenuEnable:Z

    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x2710

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_type"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v6, :cond_5

    if-nez v2, :cond_5

    const-string v6, "Enhanced4GLTE"

    const-string v7, "manual deregister for IMS"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v6}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    :cond_5
    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "uce_enable"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v6, :cond_7

    if-nez v2, :cond_7

    const-string v6, "Enhanced4GLTE"

    const-string v7, "setEABFeatureEnable for IMS"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v6}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setEABFeatureEnable()V

    :cond_7
    :goto_2
    if-nez v2, :cond_8

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    sput-boolean v4, Lcom/android/phone/PhoneGlobals;->mUCEToggleEnabled:Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.phone.action.DISABLE_UCE_TOGGLE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/Enhanced4GLTE;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.contacts.eab.PST_SETTING_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "Capability_Discovery"

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "uce_enable"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v5, v4, :cond_a

    const-string v4, "1"

    :goto_3
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "values"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/Enhanced4GLTE;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8
    move v4, v5

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "uce_enable"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v6, :cond_7

    if-nez v2, :cond_7

    const-string v6, "Enhanced4GLTE"

    const-string v7, "setEABFeatureDisable for IMS"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v6}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setEABFeatureDisable()V

    goto :goto_2

    :cond_a
    const-string v4, "0"

    goto :goto_3
.end method

.method protected onResume()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v2, "Enhanced4GLTE"

    const-string v5, "onResume..."

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "mobile_data"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/Enhanced4GLTE;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/phone/Enhanced4GLTE;->updateStandardData()V

    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/phone/Enhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "voicecall_type"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->getPhoneWithPhoneType(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v5, :cond_1

    :cond_0
    sget-boolean v2, Lcom/android/phone/Enhanced4GLTE;->forcingVolteMenuEnable:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegisteringToMobile()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isDisablingMobileData()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "uce_enable"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->mUCEToggleEnabled:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/Enhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/Enhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_3
.end method
