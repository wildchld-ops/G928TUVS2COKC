.class Lcom/android/phone/MobileNetworkSettings$11;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$11;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$11;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaOptions;->enableDUN(Z)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$11;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$1000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
