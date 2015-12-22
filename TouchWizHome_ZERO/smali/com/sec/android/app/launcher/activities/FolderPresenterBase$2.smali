.class Lcom/sec/android/app/launcher/activities/FolderPresenterBase$2;
.super Ljava/lang/Object;
.source "FolderPresenterBase.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->showDarkenView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

.field final synthetic val$darkenView:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/FolderPresenterBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$2;->this$0:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$2;->val$darkenView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$2;->val$darkenView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$2;->this$0:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->closeOpenFolder()Z

    move-result v0

    return v0
.end method
