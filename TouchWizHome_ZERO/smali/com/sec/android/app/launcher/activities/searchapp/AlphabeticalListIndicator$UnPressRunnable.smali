.class Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator$UnPressRunnable;
.super Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator$StateChanger;
.source "AlphabeticalListIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnPressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator$UnPressRunnable;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator;

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator$StateChanger;-><init>(Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator$StateChanger;->run()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator$UnPressRunnable;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator$UnPressRunnable;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListIndicator;->invalidate()V

    return-void
.end method
