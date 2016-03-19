.class Lcom/android/phone/CallFeaturesSetting$12;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$1400(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return v2
.end method
