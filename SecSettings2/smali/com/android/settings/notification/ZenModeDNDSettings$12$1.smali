.class Lcom/android/settings/notification/ZenModeDNDSettings$12$1;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings$12;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/ZenModeDNDSettings$12;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings$12;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$12$1;->this$1:Lcom/android/settings/notification/ZenModeDNDSettings$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$12$1;->this$1:Lcom/android/settings/notification/ZenModeDNDSettings$12;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->refreshAutomationSection()V
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$900(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    return-void
.end method
