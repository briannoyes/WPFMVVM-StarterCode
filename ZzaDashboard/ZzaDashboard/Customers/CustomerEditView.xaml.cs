using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Zza.Data;
using ZzaDashboard.Services;

namespace ZzaDashboard.Customers
{
    public partial class CustomerEditView : UserControl
    {
        private ICustomersRepository _repository = new CustomersRepository();
        private Customer _customer = null;

        public CustomerEditView()
        {
            InitializeComponent();
        }

        public Guid CustomerId
        {
            get { return (Guid)GetValue(CustomerIdProperty); }
            set { SetValue(CustomerIdProperty, value); }
        }

        public static readonly DependencyProperty CustomerIdProperty =
            DependencyProperty.Register("CustomerId", typeof(Guid), 
            typeof(CustomerEditView), new PropertyMetadata(Guid.Empty));

        private async void OnLoaded(object sender, RoutedEventArgs e)
        {
            if (DesignerProperties.GetIsInDesignMode(this)) return;

            _customer = await _repository.GetCustomerAsync(CustomerId);
            if (_customer == null) return;
            firstNameTextBox.Text = _customer.FirstName;
            lastNameTextBox.Text = _customer.LastName;
            phoneTextBox.Text = _customer.Phone;
        }

        private async void OnSave(object sender, RoutedEventArgs e)
        {
            // TODO: Validate input... call business rules... etc...
            _customer.FirstName = firstNameTextBox.Text;
            _customer.LastName = lastNameTextBox.Text;
            _customer.Phone = phoneTextBox.Text;
            await _repository.UpdateCustomerAsync(_customer);
        }
    }
}
