.class Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlternateRecentsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/AlternateRecentsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentsMultiUserChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->bindToRecentsService()V

    return-void
.end method
