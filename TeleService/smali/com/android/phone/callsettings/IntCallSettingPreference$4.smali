.class Lcom/android/phone/callsettings/IntCallSettingPreference$4;
.super Ljava/lang/Object;
.source "IntCallSettingPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IntCallSettingPreference;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IntCallSettingPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IntCallSettingPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallSettingPreference$4;->this$0:Lcom/android/phone/callsettings/IntCallSettingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
