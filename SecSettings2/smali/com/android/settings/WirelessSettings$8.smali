.class Lcom/android/settings/WirelessSettings$8;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WirelessSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WirelessSettings$8;->this$0:Lcom/android/settings/WirelessSettings;

    iput-object p2, p0, Lcom/android/settings/WirelessSettings$8;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "TAG"

    const-string v1, "setPositiveButton"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/WirelessSettings$8;->val$newValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings$8;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->access$300(Lcom/android/settings/WirelessSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
