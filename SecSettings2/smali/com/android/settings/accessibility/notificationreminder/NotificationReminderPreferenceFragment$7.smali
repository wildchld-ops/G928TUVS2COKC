.class Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$7;
.super Ljava/lang/Object;
.source "NotificationReminderPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$7;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$7;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->access$300(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$7;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->access$400(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_reminder_led_indicator"

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$7;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->access$500(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_indicator_missed_event"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$7;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->access$600(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_indicator_voice_recording"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$7;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->access$700(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_indicator_low_battery"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$7;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->access$800(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_indicator_charing"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
