# Populating the UITableView iOS Objective-C
 
Simple example of how to populate data to an UITableView (iOS programming with Objective-C)

In this example, the data is stored in an Array of Student objects.

Call this to get the Data:
```
+(NSMutableArray *)getStudentList;
```

To populate data to UITableView, we need to implement the UITableViewDataSource protocol.

```
@interface ViewController : NSViewController <NSTableViewDataSource> {
    NSMutableArray *myData;
}

...

@end
```

myData points to the array of Student objects.

Then, the ViewController will be the data source:
```
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    myData = MyData.getStudentList;
    
    myTableView.dataSource = self;
    
}
```
Finally, implement the following 2 methods:
```
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath;
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
```
