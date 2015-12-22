.class public Lcom/android/systemui/statusbar/policy/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# static fields
.field public static final GPS_ALERT_PREF:Ljava/lang/String; = "gps_alert_pref"

.field public static final OUTDOOR_MODE_ALERT_PREF:Ljava/lang/String; = "outdoor_mode_alert_pref"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "status_bar"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    const-string v0, "status_bar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static read(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "status_bar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
