.class Lcom/sec/android/app/launcher/theme/EventThemeManager$1;
.super Landroid/database/ContentObserver;
.source "EventThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/theme/EventThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/theme/EventThemeManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/theme/EventThemeManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager$1;->this$0:Lcom/sec/android/app/launcher/theme/EventThemeManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager$1;->this$0:Lcom/sec/android/app/launcher/theme/EventThemeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->sendFestivalThemeChanged()V

    return-void
.end method
