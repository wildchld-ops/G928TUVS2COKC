.class public interface abstract Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeUpdateListener;
.super Ljava/lang/Object;
.source "BadgeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BadgeUpdateListener"
.end annotation


# virtual methods
.method public abstract onBadgeUpdated(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;",
            ">;)V"
        }
    .end annotation
.end method
