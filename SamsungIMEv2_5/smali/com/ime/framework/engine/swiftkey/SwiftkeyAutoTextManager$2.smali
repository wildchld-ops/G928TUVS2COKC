.class Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2;
.super Ljava/lang/Object;
.source "SwiftkeyAutoTextManager.java"

# interfaces
.implements Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
    .locals 0

    return-void
.end method

.method public onEditingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
    .locals 0

    return-void
.end method

.method public onListingComplete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2$1;

    invoke-direct {v1, p0, p1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2$1;-><init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v1, "SwiftkeyAutoTextManager"

    const-string v2, "SwiftkeyAutoTextManager onListingComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemovingComplete(Z)V
    .locals 0

    return-void
.end method

.method public onResortingComplete()V
    .locals 0

    return-void
.end method
