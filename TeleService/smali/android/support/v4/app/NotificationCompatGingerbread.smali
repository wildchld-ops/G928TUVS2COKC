.class Landroid/support/v4/app/NotificationCompatGingerbread;
.super Ljava/lang/Object;
.source "NotificationCompatGingerbread.java"


# direct methods
.method public static add(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 0
    .param p0    # Landroid/app/Notification;
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # Landroid/app/PendingIntent;
    .param p5    # Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object p5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    return-object p0
.end method
